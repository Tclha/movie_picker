import 'package:flutter/material.dart';

class StatelessTest extends StatefulWidget {
  final int counter;
  final int maxCount;

  const StatelessTest({
    required this.counter,
    required this.maxCount,
    super.key,
  });

  @override
  State<StatelessTest> createState() => _StatelessTestState();
}

class _StatelessTestState extends State<StatelessTest>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();

    // Animation controller for smooth looping
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();

    // Animated color using a ColorTween
    _colorAnimation = TweenSequence<Color?>([
      TweenSequenceItem(
        tween: ColorTween(begin: Colors.red, end: Colors.orange),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: ColorTween(begin: Colors.orange, end: Colors.yellow),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: ColorTween(begin: Colors.yellow, end: Colors.green),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: ColorTween(begin: Colors.green, end: Colors.blue),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: ColorTween(begin: Colors.blue, end: Colors.purple),
        weight: 1,
      ),
    ]).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double counterPercentage = widget.counter / widget.maxCount;
    String counterText;

    if (counterPercentage == 0.0) {
      counterText = "";
    } else if (counterPercentage <= 0.34) {
      counterText = "If I was you, I would cut up my wrists";
    } else if (counterPercentage <= 0.67) {
      counterText = "double O tatted on her body";
    } else {
      counterText = "XO tatted all over her body";
    }

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32.0,
        vertical: 10.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Spacer(),
          SizedBox(
            height: 60.0,
            child: Text(
              counterText,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 16.0),
          AnimatedBuilder(
            animation: _colorAnimation,
            builder: (context, child) {
              return LinearProgressIndicator(
                borderRadius: BorderRadius.circular(30),
                valueColor: AlwaysStoppedAnimation(_colorAnimation.value),
                value: counterPercentage,
                minHeight: 40.0,
              );
            },
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

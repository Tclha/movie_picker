import 'package:flutter/material.dart';

class HomePageListItem extends StatelessWidget {
  final String backgroundImage;
  final String title;

  const HomePageListItem({
    required this.backgroundImage,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 48),
        margin: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 3,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            opacity: 0.7,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 12,
            ),
            Flexible(
              child: Text(
                title,
                style: TextStyle(fontSize: 54),
              ),
            )
          ],
        ),
      ),
    );
  }
}

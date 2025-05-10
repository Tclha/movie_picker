import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageListItem extends StatelessWidget {
  final String backgroundImage;
  final String title;
  final VoidCallback onTap;

  const HomePageListItem({
    required this.backgroundImage,
    required this.title,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 48),
          margin: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 3,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(backgroundImage),
              opacity: 0.7,
              fit: BoxFit.cover,
            ),
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
                  style: GoogleFonts.anton(
                      fontSize: 54,
                      letterSpacing: 2,
                      color: Colors.white.withValues(
                        alpha: 0.8,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileOptionCard extends StatelessWidget {
  final String text;
  final Color color;
  final BorderSide borderSide;
  const ProfileOptionCard({
    super.key,
    required this.text,
    required this.color,
    required this.borderSide,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(bottom: borderSide)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(padding: const EdgeInsets.all(8.0)),
            ),
            SizedBox(width: 16),
            Text(
              text,
              style: GoogleFonts.inter(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutDetails extends StatelessWidget {
  WorkoutDetails(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.num,
      required this.mark});
  String imagePath;
  String title;
  String num;
  String mark;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ImageIcon(
              AssetImage(imagePath),
              color: Color(0xFF717BBC),
            ),
            Text(
              title,
              style:
                  GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 12),
            )
          ],
        ),
        Row(
          children: [
            Text(
              num,
              style:
                  GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            Text(
              mark,
              style:
                  GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 14),
            )
          ],
        )
      ],
    );
  }
}

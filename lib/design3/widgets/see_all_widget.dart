import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeeAllWidget extends StatelessWidget {
  SeeAllWidget({super.key, required this.seeText});
  String seeText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          seeText,
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              color: Color(0xFF371B34),
              fontSize: 18),
        ),
        Spacer(),
        Text(
          'See all',
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              color: Color(0xFF5925DC),
              fontSize: 14),
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 14,
          color: Color(0xFF5925DC),
        ),
      ],
    );
  }
}

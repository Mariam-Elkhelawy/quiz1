import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeeMoreWidget extends StatelessWidget {
   SeeMoreWidget({super.key,required this.seeText});
String seeText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          seeText,
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              color: const Color(0xFF371B34),
              fontSize: 18),
        ),
        const Spacer(),
        Text(
          'See more',
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              color: const Color(0xFF027A48),
              fontSize: 14),
        ),
        const Icon(
          Icons.arrow_forward_ios,
          size: 14,
          color: Color(0xFF027A48),
        )
      ],
    );
  }
}

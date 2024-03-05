import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextFormField(
        decoration: InputDecoration(
          enabled: false,
          labelText: 'Articles, Video, Audio and More,...',
          labelStyle: GoogleFonts.inter(color: const Color(0xFF667085), fontSize: 16),
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color(0xFFD0D5DD),
            ),
          ),
        ),
      ),
    );
  }
}

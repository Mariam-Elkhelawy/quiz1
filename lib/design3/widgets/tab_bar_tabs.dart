import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarWidget extends StatelessWidget {
   TabBarWidget({super.key,required this.tabText});
  String tabText;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          tabText,
          style: GoogleFonts.inter(
              fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
      decoration: BoxDecoration(
          color: Color(0xFFFCFCFD),
          border: Border.all(color: Color(0xFFE4E7EC),),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}

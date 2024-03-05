import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgramWidget extends StatelessWidget {
  ProgramWidget(
      {super.key,
      required this.imagePath,
      required this.dayNum,
      required this.programDec,
      required this.programName});
  String imagePath;
  String dayNum;
  String programName;
  String programDec;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFEAECF5)),
        color: const Color(0xFFF8F9FC),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      dayNum,
                      style: GoogleFonts.inter(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: const Color(0xFFFCFCFD),
                      border: Border.all(color: const Color(0xFFE4E7EC),),
                      borderRadius: BorderRadius.circular(20)),
                ),const SizedBox(height: 6),
                Text(
                  programName,
                  style: GoogleFonts.inter(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),const SizedBox(height: 2),
                Text(
                  programDec,
                  style: GoogleFonts.inter(
                      fontSize: 12, fontWeight: FontWeight.w400),
                ),const SizedBox(height: 2),
                Row(
                  children: [
                    const Icon(
                      Icons.access_time_outlined,
                      size: 18,
                      color: Color(0xFF101828),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      '30 mins',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),
            Image.asset(imagePath,width: 145,)
          ],
        ),
      ),
    );
  }
}

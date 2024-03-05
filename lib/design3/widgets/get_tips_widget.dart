import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetTipsWidget extends StatelessWidget {
  const GetTipsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFEAECF5),),
        color: Color(0xFFF2F4F7),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Image.asset(
              'assets/images/design3/Doctor.png',
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  """Connect with doctors &
get suggestions""",
                  style: GoogleFonts.inter(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 4),
                Text(
                  """Connect now and get
 expert insights """,
                  style: GoogleFonts.inter(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 6),
                Container(
                  width: 110,
                  height: 40,
                  child: Center(
                    child: Text(
                      'View detail',
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFF7F56D9),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

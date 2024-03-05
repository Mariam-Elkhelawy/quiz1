import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureWidget extends StatelessWidget {
  const FeatureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14,horizontal: 6),
      child: Container(
        height: 170,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Positive vibes',
                    style: GoogleFonts.inter(
                        color: Color(0xFF344054),
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    """Boost your mood with
positive vibes""",
                    style: GoogleFonts.inter(fontSize: 16),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.play_circle,
                        color: Color(0xFF32D583),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '10 mins',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      )
                    ],
                  )
                ],
              ),
              Spacer(),
              Image.asset('assets/images/design1/Walking.png')
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Color(0xFFECFDF3),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );

  }
}

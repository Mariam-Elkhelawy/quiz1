import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class ExercisesWidget extends StatelessWidget {
  ExercisesWidget(
      {super.key,
      required this.color,
      required this.imagePath,
      required this.exerciseName});
  Color color;
  String imagePath;
  String exerciseName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            Image.asset(imagePath),SizedBox(width: 10,),
            Text(
              exerciseName,
              style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), color: color),
    );
  }
}

import 'package:flutter/cupertino.dart';

class FeelingWidget extends StatelessWidget {
   FeelingWidget({super.key,required this.imagePath,required this.feelingName});
String imagePath;
String feelingName;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(imagePath),
      const SizedBox(
        height: 3,
      ),
      Text(feelingName)

    ],);
  }
}

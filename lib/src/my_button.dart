import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'my_text.dart';

class MyNeumorphicButton extends StatelessWidget {
  final Function()? onPressed;
  final Color color, textColor;
  final String text;
  final double textSize;

  const MyNeumorphicButton(
      {Key? key,
      this.onPressed,
      required this.color,
      required this.textColor,
      required this.text,
      required this.textSize,
      required})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: onPressed,
      style: NeumorphicStyle(
        color: color,
        depth: 10,
        boxShape: NeumorphicBoxShape.roundRect(
          BorderRadius.circular(20.r),
        ),
      ),
      child: Center(
        child: MyTexts(
          text: text,
          color: textColor,
          size: textSize,
        ),
      ),
    );
  }
}

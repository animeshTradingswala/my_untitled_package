import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'const/colors.dart';

class MyBackButton extends StatelessWidget {
  final Color btnColor;

  const MyBackButton({Key? key, required this.btnColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashColor: black,
      splashRadius: 20.r,
      icon: NeumorphicIcon(
        Icons.arrow_back,
        style: NeumorphicStyle(
          color: btnColor,
        ),
      ),
      onPressed: () {
        Get.back();
      },
    );
  }
}

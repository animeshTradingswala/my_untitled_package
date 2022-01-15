import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'const/colors.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final bool? ifDone;
  final bool? isFixed;
  final String? initialValue;
  final int? maxLength;
  final int? maxLines;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool? iconVisible;
  final IconData? icon;

  const MyTextField({
    Key? key,
    this.controller,
    required this.labelText, //
    this.hintText,
    required this.ifDone, //
    this.isFixed,
    this.initialValue,
    this.maxLength,
    this.maxLines,
    this.keyboardType,
    required this.validator, //
    this.iconVisible,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      maxLength: maxLength,
      maxLines: maxLines,
      enabled: isFixed == true ? false : true,
      controller: controller,
      textInputAction:
          ifDone == true ? TextInputAction.done : TextInputAction.next,
      validator: validator,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: iconVisible == true
            ? Icon(
                icon,
                size: 25,
              )
            : null,
        labelStyle: customizeTextStyle(
          FontWeight.w300,
          16.sp,
          grey,
        ),
        labelText: labelText,
        floatingLabelStyle: customizeTextStyle(FontWeight.bold, 18.0, black),
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: grey,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(
            30.r,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: grey,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(
            30.r,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: grey,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(
            30.r,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: red,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(
            30.r,
          ),
        ),
        fillColor: grey,
      ),
    );
  }

  TextStyle customizeTextStyle(fontWeight, fontSize, fontColor) => TextStyle(
        fontWeight: fontWeight,
        wordSpacing: 3,
        color: fontColor,
        fontSize: fontSize,
      );
}

import 'package:flutter/material.dart';

class MyGradiantAppbar extends StatelessWidget {
  final List<Color> colorsList;

  const MyGradiantAppbar({required this.colorsList});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: colorsList,
        ),
      ),
    );
  }
}

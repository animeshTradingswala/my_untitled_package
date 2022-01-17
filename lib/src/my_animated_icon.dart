import 'package:animator/animator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAnimatedIcon extends StatefulWidget {
  final IconData icon;
  final double size;
  final Color color;

  const MyAnimatedIcon({
    Key? key,
    required this.icon,
    required this.size,
    required this.color,
  }) : super(key: key);
  @override
  _MyAnimatedIconState createState() => _MyAnimatedIconState();
}

class _MyAnimatedIconState extends State<MyAnimatedIcon> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: _width / 2.7,
          width: _width / 2.7,
          child: Animator<double>(
            duration: Duration(milliseconds: 1000),
            cycles: 0,
            curve: Curves.easeInOut,
            tween: Tween<double>(begin: 15.0, end: 25.0),
            builder: (context, animatorState, child) => Icon(
              Icons.audiotrack,
              size: animatorState.value * 5,
              color: Colors.blueGrey,
            ),
          ),
        ),
      ),
    );
  }
}

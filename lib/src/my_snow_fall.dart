import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:particles_flutter/particles_flutter.dart';

class Snowfall extends StatelessWidget {
  final Widget child;

  const Snowfall({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          child: child,
        ),
        CircularParticle(
          isRandomColor: false,
          awayRadius: 0,
          numberOfParticles: 200,
          speedOfParticles: 1.5,
          height: 1.sw,
          width: 1.sh,
          onTapAnimation: false,
          particleColor: const Color(0xffb3d2ff),
          maxParticleSize: 7,
          isRandSize: true,
          awayAnimationCurve: Curves.fastOutSlowIn,
          enableHover: true,
          hoverColor: Colors.white,
          hoverRadius: 90,
          connectDots: false,
        ),
      ],
    );
  }
}

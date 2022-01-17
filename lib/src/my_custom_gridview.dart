import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class MyAnimatedGridview extends StatelessWidget {
  final Widget child;

  const MyAnimatedGridview({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    int columnCount = 3;

    return AnimationLimiter(
      child: GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        primary: false,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        controller: ScrollController(keepScrollOffset: false),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 2.0,
          mainAxisExtent: 410.h,
        ),
        itemBuilder: (_, int index) {
          return AnimationConfiguration.staggeredGrid(
            position: index,
            duration: Duration(milliseconds: 500),
            columnCount: columnCount,
            child: ScaleAnimation(
              duration: Duration(milliseconds: 900),
              curve: Curves.fastLinearToSlowEaseIn,
              child: FadeInAnimation(child: child),
            ),
          );
        },
      ),
    );
  }
}

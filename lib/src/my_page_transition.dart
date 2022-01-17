import 'package:flutter/material.dart';

class MyCustomPageTransitions extends StatelessWidget {
  final Widget nextPage;

  const MyCustomPageTransitions({Key? key, required this.nextPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: () => Navigator.push(
                    context,
                    SlideTransition1(nextPage: nextPage),
                  ),
              child: Text('TAP TO VIEW SLIDE ANIMATION 1')),
        ],
      ),
    );
  }
}

class SlideTransition1 extends PageRouteBuilder {
  final Widget nextPage;

  SlideTransition1({required this.nextPage})
      : super(
            pageBuilder: (context, animation, anotherAnimation) => nextPage,
            transitionDuration: Duration(milliseconds: 1000),
            reverseTransitionDuration: Duration(milliseconds: 400),
            transitionsBuilder: (context, animation, anotherAnimation, child) {
              animation = CurvedAnimation(
                  curve: Curves.fastLinearToSlowEaseIn,
                  parent: animation,
                  reverseCurve: Curves.fastOutSlowIn);
              return SlideTransition(
                position: Tween(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
                    .animate(animation),
                child: nextPage,
              );
            });
}

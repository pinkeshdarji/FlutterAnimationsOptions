import 'package:flutter/material.dart';
import 'dart:ui';

class Option1 extends StatefulWidget {
  @override
  _Option1State createState() => _Option1State();
}

class _Option1State extends State<Option1> with TickerProviderStateMixin {
  Animation<double> animation;
  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation = Tween<double>(begin: 0, end: -300).animate(animationController)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/ibg.png'),
                  fit: BoxFit.cover)),
        ),
        Align(
          alignment: AlignmentDirectional(0,0.7),
          child: Transform.translate(
            offset: Offset(0, animation.value),
            child: Container(
              height: 250,
              width: 170,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/ironman.png'),
              )),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: RaisedButton(
            onPressed: () {
              animationController.forward();
            },
            child: Text('Go'),
            color: Colors.red,
            textColor: Colors.yellowAccent,
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15))),
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}

import 'package:flutter/material.dart';

class Option3 extends StatefulWidget {
  @override
  _Option3State createState() => _Option3State();
}

class _Option3State extends State<Option3> with TickerProviderStateMixin {
  Animation<Offset> animation;
  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    animation = Tween<Offset>(begin: Offset(0, 0), end: Offset(0, -1.2)).animate(animationController);
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
          alignment: AlignmentDirectional(0.0, 0.7),
          child: SlideTransition(
              position: animation,
              child: Container(
                height: 250,
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/ironman.png'),
                    )),
              )
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
                borderRadius: BorderRadius.all(Radius.circular(20))),
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

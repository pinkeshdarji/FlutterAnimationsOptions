import 'package:flutter/material.dart';

class Option2 extends StatefulWidget {
  @override
  _Option2State createState() => _Option2State();
}

class _Option2State extends State<Option2> with TickerProviderStateMixin {
  Animation<double> animation;
  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    animation = Tween<double>(begin: 0, end: -350).animate(animationController);
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
          child: AnimatedBuilder(animation: animation, builder: (BuildContext context, Widget chile){
            return Transform.translate(
              offset: Offset(0, animation.value),
              child: Container(
                height: 250,
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/ironman.png'),
                    )),
              ),
            );
          }),
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

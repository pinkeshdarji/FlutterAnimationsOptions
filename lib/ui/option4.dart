import 'package:flutter/material.dart';

class Option4 extends StatefulWidget {
  @override
  _Option4State createState() => _Option4State();
}

class _Option4State extends State<Option4> with TickerProviderStateMixin {

  double _ironManAlignment = 50;

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
        AnimatedPositioned(
          duration: Duration(seconds: 3),
          bottom: _ironManAlignment,
          left: 90,
          child: Container(
            height: 250,
            width: 150,
            child: Image.asset('assets/images/ironman.png'),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: RaisedButton(
            onPressed: () {
              _flyIronMan();
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

  void _flyIronMan() {
    setState(() {
      _ironManAlignment = 320;
    });
  }

}

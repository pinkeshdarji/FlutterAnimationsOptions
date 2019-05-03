import 'package:flutter/material.dart';

class Option5 extends StatefulWidget {
  @override
  _Option5State createState() => _Option5State();
}

class _Option5State extends State<Option5> with TickerProviderStateMixin {

  AlignmentDirectional _ironManAlignment = AlignmentDirectional(0.0, 0.7);

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
        AnimatedContainer(
          duration: Duration(seconds: 3),
          alignment: _ironManAlignment,
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
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15))),
          ),
        )
      ],
    );
  }

  void _flyIronMan() {
    setState(() {
      _ironManAlignment = AlignmentDirectional(0.0,-0.7);
    });
  }

}

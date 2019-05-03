import 'package:flutter/material.dart';
import 'ui/home.dart';
import 'ui/option1.dart';
import 'ui/option2.dart';
import 'ui/option4.dart';
import 'ui/option3.dart';
import 'ui/option5.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          body: Option5()
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:v2exflutter/layout/layout.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayOut(true, 'V2EX', Test());
  }
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('test');
  }
}

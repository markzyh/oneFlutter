import 'package:flutter/material.dart';
// import 'package:v2exflutter/homePage/home_page.dart';
import 'package:v2exflutter/layout/layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => LayOut(),
      },
    );
  }
}

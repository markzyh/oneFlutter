import 'package:flutter/material.dart';
import 'package:v2exflutter/layout/layout.dart';
import 'package:v2exflutter/api/hot_topic.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // This widget is the root of your application.
  void getTest() async {
    var response = await HotTopic.getHotTopic();
    print(response);
  }

  @override
  void initState() {
    super.initState();
    getTest();
  }

  @override
  Widget build(BuildContext context) {
    return LayOut(true, 'V2EX', Test());
  }
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('111');
  }
}

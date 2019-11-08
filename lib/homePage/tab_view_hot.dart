import 'package:flutter/material.dart';
import 'package:v2exflutter/components/list_view_spearated.dart';
import 'package:v2exflutter/api/hot_topic.dart';

class TabViewHot extends StatefulWidget {
  final List hotList;
  TabViewHot(this.hotList);
  @override
  _TabViewHotState createState() => _TabViewHotState(hotList);
}

class _TabViewHotState extends State<TabViewHot> {
  List hotList;
  _TabViewHotState(this.hotList);

  @override
  void initState() {
    super.initState();
    getHotList();
  }

  void getHotList() async {
    var response = await HotTopic.getHotTopic(); //list
    print('重新请求');
    setState(() {
      hotList = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListViewSpearated(hotList, getHotList);
  }
}

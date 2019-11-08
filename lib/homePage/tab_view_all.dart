import 'package:flutter/material.dart';
import 'package:v2exflutter/components/list_view_spearated.dart';
import 'package:v2exflutter/api/hot/hot_topic.dart';

class TabViewAll extends StatefulWidget {
  @override
  _TabViewAllStata createState() => _TabViewAllStata();
}

class _TabViewAllStata extends State<TabViewAll>
    with AutomaticKeepAliveClientMixin {
  List latestList;
  @override
  void initState() {
    super.initState();
    getLatestList();
  }

  void getLatestList() async {
    var response =
        await HotTopic.getHotTopic('/api/topics/latest.json', 'GET'); //list
    print('重新请求');
    setState(() {
      latestList = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListViewSpearated(latestList, getLatestList);
  }

  @override
  bool get wantKeepAlive => true;
}

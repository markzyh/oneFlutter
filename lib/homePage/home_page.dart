import 'package:flutter/material.dart';
// import 'package:v2exflutter/layout/layout.dart';
import 'package:v2exflutter/api/hot_topic.dart';
import 'package:v2exflutter/homePage/tab_view_hot.dart';
import 'package:v2exflutter/homePage/TabViewTwo.dart';
import 'package:v2exflutter/homePage/TabViewThree.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  ScrollController _scrollViewController;
  TabController _tabController;
  List hotList = [];

  @override
  void initState() {
    super.initState();
    _scrollViewController = ScrollController();
    _tabController = TabController(vsync: this, length: 3);
    getHotList();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollViewController.dispose();
    _tabController.dispose();
  }

  void getHotList() async {
    var response = await HotTopic.getHotTopic(); //list
    setState(() {
      hotList = response;
    });
    print(hotList[0].title);
    print('hotList22222222222222');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'V2EX',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Text('最热'),
            Text('111'),
            Text('111'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          TabViewHotWidget(hotList),
          TabViewTwo(),
          TabViewThree(),
        ],
      ),
    );
  }
}

class TabViewHotWidget extends StatelessWidget {
  final List hotList;
  TabViewHotWidget(this.hotList);
  @override
  Widget build(BuildContext context) {
    if (hotList.length == 0) return SpinKitCircle(color: Colors.blue);
    return TabViewHot(hotList);
  }
}

import 'package:flutter/material.dart';
// import 'package:v2exflutter/layout/layout.dart';
import 'package:v2exflutter/homePage/tab_view_hot.dart';
import 'package:v2exflutter/homePage/tab_view_latest.dart';
// import 'package:v2exflutter/homePage/tab_view_all.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // ScrollController _scrollViewController;
  TabController _topTabController;
  // TabController _tabController;
  List hotList = [];

  @override
  void initState() {
    super.initState();
    // _scrollViewController = ScrollController();
    _topTabController = TabController(vsync: this, length: 2);
    // _bottomTabController = TabController(vsync: this, length: 2);
    // getHotList();
  }

  @override
  void dispose() {
    super.dispose();
    // _scrollViewController.dispose();
    _topTabController.dispose();
    // _bottomTabController.dispose();
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
          controller: _topTabController,
          tabs: <Widget>[
            Text('最热'),
            Text('最新'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _topTabController,
        children: <Widget>[
          TabViewHot(),
          TabViewLatest(),
        ],
      ),
      // bottomNavigationBar: Material(
      //   child: TabBar(
      //     controller: _bottomTabController,
      //     tabs: <Widget>[
      //       Text('button1'),
      //       Text('button2'),
      //       Text('button3'),
      //     ],
      //   ),
      // ),
    );
  }
}

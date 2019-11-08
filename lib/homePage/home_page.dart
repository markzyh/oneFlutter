import 'package:flutter/material.dart';
// import 'package:v2exflutter/layout/layout.dart';
import 'package:v2exflutter/homePage/tab_view_hot.dart';
import 'package:v2exflutter/homePage/tab_view_lastest.dart';
import 'package:v2exflutter/homePage/tab_view_all.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // ScrollController _scrollViewController;
  TabController _tabController;
  List hotList = [];

  @override
  void initState() {
    super.initState();
    // _scrollViewController = ScrollController();
    _tabController = TabController(vsync: this, length: 3);
    // getHotList();
  }

  @override
  void dispose() {
    super.dispose();
    // _scrollViewController.dispose();
    _tabController.dispose();
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
          TabViewHot(hotList),
          TabViewLastest(),
          TabViewAll(),
        ],
      ),
    );
  }
}

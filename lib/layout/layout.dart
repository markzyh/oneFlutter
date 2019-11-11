import 'package:flutter/material.dart';
import 'package:v2exflutter/homePage/home_page.dart';

class LayOut extends StatefulWidget {
  @override
  _LayOutState createState() => _LayOutState();
}

class _LayOutState extends State<LayOut> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
      bottomNavigationBar: Material(
        child: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Text('button1'),
            Text('button2'),
            Text('button3'),
          ],
        ),
      ),
    );
  }
}

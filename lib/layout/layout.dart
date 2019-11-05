import 'package:flutter/material.dart';

class LayOut extends StatelessWidget {
  final String _title;
  final bool _isCenter;
  Widget child, tabBar;
  LayOut(this._isCenter, this._title, this.child, {this.tabBar});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: _isCenter,
        bottom: tabBar,
      ),
      body: child,
    );
  }
}

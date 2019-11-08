import 'package:flutter/material.dart';
import 'package:v2exflutter/components/list_item.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ListViewData extends StatefulWidget {
  final List dataList;
  final getList;
  ListViewData(this.dataList, this.getList);
  @override
  _ListViewDataState createState() => _ListViewDataState(dataList, getList);
}

class _ListViewDataState extends State<ListViewData> {
  final refreshKey = GlobalKey<RefreshIndicatorState>();
  final ScrollController _scrollController = ScrollController();
  List dataList;
  final getList;
  _ListViewDataState(this.dataList, this.getList);

  //下拉刷新
  @protected
  Future<Null> onRefresh() async {
    print('刷新了刷新了111');
    getList();
  }

  @override
  void initState() {
    super.initState();
    print('1111');
    // print('TabViewOne init');
    // print(dataList);
  }

  @override
  Widget build(BuildContext context) {
    num _itemCount = dataList.length;
    return RefreshIndicator(
      key: refreshKey,
      onRefresh: onRefresh,
      child: ListView.separated(
        physics: AlwaysScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          if (index == _itemCount) print('到底了');
          return ListItem(dataList[index]);
        },
        itemCount: _itemCount,
        controller: _scrollController,
        separatorBuilder: (BuildContext context, int index) => Divider(
          height: 1,
          color: Colors.blue,
        ),
      ),
    );
  }

  bool get wantKeepAlive => true;
}

class ListViewSpearated extends StatelessWidget {
  final List dataList;
  final getList;
  ListViewSpearated(this.dataList, this.getList);
  @override
  Widget build(BuildContext context) {
    if (dataList.length == 0) return SpinKitCircle(color: Colors.blue);
    return ListViewData(dataList, getList);
  }
}

import 'package:flutter/material.dart';
import 'package:v2exflutter/components/list_item.dart';

class TabViewHot extends StatefulWidget {
  final List hotList;
  TabViewHot(this.hotList);
  @override
  _TabViewHotState createState() => _TabViewHotState(hotList);
}

class _TabViewHotState extends State<TabViewHot>
    with AutomaticKeepAliveClientMixin {
  final refreshKey = GlobalKey<RefreshIndicatorState>();
  final ScrollController _scrollController = ScrollController();
  List hotList;
  _TabViewHotState(this.hotList);

  //下拉刷新
  @protected
  Future<Null> onRefresh() async {
    print('刷新了刷新了111');
  }

  @override
  void initState() {
    super.initState();
    // print('TabViewOne init');
    // print(hotList);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    num _itemCount = hotList.length;
    return ListView.separated(
      physics: AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        if (index == _itemCount) print('到底了');
        return ListItem(hotList[index]);
      },
      itemCount: _itemCount,
      controller: _scrollController,
      separatorBuilder: (BuildContext context, int index) => Divider(
        height: 1,
        color: Colors.blue,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

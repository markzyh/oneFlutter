import 'package:flutter/material.dart';
import 'package:common_utils/common_utils.dart';

class ListItem extends StatelessWidget {
  final item;
  ListItem(this.item);
  void testTap() {
    print('点击了点击了');
  }

  @override
  Widget build(BuildContext context) {
    // TimerUtil _timerUtil;
    var dateString = (item.lastTouched * 1000);
    var now = DateTime.now().millisecondsSinceEpoch;
    // var now1 = DateTime.now();
    // var time = DateTime.fromMillisecondsSinceEpoch(dateString);
    // var diff = DateTime.fromMillisecondsSinceEpoch(dateString).difference(now1);
    // print(now - dateString);
    // print(now);
    // print(dateString);
    // print('--------------------------------------------------------');
    // var val = diff.toString().substring(1, 5);
    // var time = diff;
    String timeline = TimelineUtil.format(dateString, locTimeMillis: now);
    var time = timeline;
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Image.network(
          'https:${item.member.avatarNormal}',
          width: 60,
          height: 60,
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //控制expanded
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                item.title,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //圆角
                    ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: Container(
                        height: 18,
                        child: GestureDetector(
                          onTap: testTap,
                          child: Text(
                            item.node.title,
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                        color: Colors.grey,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(left: 2, right: 2),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 4),
                      height: 18,
                      child: Row(
                        children: <Widget>[
                          // Icon(
                          //   IconData(0xe63f, fontFamily: 'iconfont'),
                          //   size: 10,
                          //   color: Colors.grey,
                          // ),
                          // Text(
                          //   item.member.username,
                          //   style: TextStyle(fontSize: 12),
                          // ),
                          Icon(
                            IconData(0xe63f, fontFamily: 'iconfont'),
                            size: 10,
                            color: Colors.grey,
                          ),
                          Text(
                            time.toString(),
                            // item.lastTouched.toString(),
                            style: TextStyle(fontSize: 10),
                          ),
                          Icon(
                            IconData(0xe63f, fontFamily: 'iconfont'),
                            size: 10,
                            color: Colors.grey,
                          ),
                          Text(
                            '最后来自',
                            style: TextStyle(fontSize: 10),
                          ),
                          Text(
                            item.lastReplyBy,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Text('data'),
        // Container(
        //   // margin: EdgeInsets.only(right: 1),
        //   child: Text(item.replies.toString()),
        // )
        ClipRRect(
          borderRadius: BorderRadius.circular(2),
          child: Container(
            child: Text(
              item.replies.toString(),
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            color: Colors.grey,
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 8, right: 8),
          ),
        ),
      ],
    );
  }
}

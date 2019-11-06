import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final item;
  ListItem(this.item);
  void testTap() {
    print('点击了点击了');
  }

  @override
  Widget build(BuildContext context) {
    // print(item.node.avatarNormal);
    // return Text('111');
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
                        height: 24,
                        child: GestureDetector(
                          onTap: testTap,
                          child: Text(
                            item.node.title,
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                        color: Colors.grey,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(left: 8, right: 8),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 4),
                      height: 24,
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
                            item.lastTouched.toString(),
                            style: TextStyle(fontSize: 12),
                          ),
                          Icon(
                            IconData(0xe63f, fontFamily: 'iconfont'),
                            size: 10,
                            color: Colors.grey,
                          ),
                          Text(
                            '最后回复来自',
                            style: TextStyle(fontSize: 12),
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
      ],
    );
  }
}

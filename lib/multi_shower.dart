library multi_shower;

import 'package:flutter/material.dart';

class MultiShower extends StatelessWidget {
  MultiShower(
      this.list,
      this.call, {
        this.width = 110,
        this.height = 110 * 0.618,
        this.infos,
        this.color = Colors.cyanAccent,
      });

  final List list;
  final List<String> infos;
  final Function call;
  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var li = <Widget>[];
    for (var i = 0; i < list.length; i++) {
      var child = Container(
          margin: EdgeInsets.all(8),
          color: color,
          width: width,
          height: height,
          child: call(list[i]));
      li.add(Column(
        children: <Widget>[
          child,
          Text(infos != null ? infos[i] : list[i].toString().split(".")[1])
        ],
      ));
    }
    return Wrap(
      children: li,
    );
  }
}
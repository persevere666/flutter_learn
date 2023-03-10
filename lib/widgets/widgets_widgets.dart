import "package:flutter/material.dart";
import "package:flutter_learn/widgets/AnimatedList/AnimatedListDemo1.dart";

class WrapStu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      width: 500,
      height: 500,
      child: Wrap(
        direction: Axis.horizontal,
        textDirection: TextDirection.ltr,
        verticalDirection: VerticalDirection.down,
        alignment: WrapAlignment.spaceAround,
        spacing: 10,
        runSpacing: 10,
        runAlignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          const AnimatedListDemo1(),
          MyText("222"),
          MyText("333333333"),
          MyText("4433333"),
          MyText("55555555555555"),
          MyText("6666")
        ],
      ),
    );
  }
}

class MyText extends StatelessWidget {
  String msg;

  MyText(this.msg);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8, 10, 8, 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.red, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Text(msg),
    );
  }
}
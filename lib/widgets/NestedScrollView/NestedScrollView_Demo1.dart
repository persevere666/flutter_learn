///
///reference https://www.jianshu.com/p/3eeef0c27c2f
///
import 'package:flutter/material.dart';

class MSHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: Text("嵌套ListView"),
              pinned: true, // 固定在顶部
              forceElevated: innerBoxIsScrolled, // 是否显示阴影
            ),
            buildSliverList(5),
          ];
        },
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          // physics: const ClampingScrollPhysics(), //重要
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 50,
              child: Center(child: Text('Item $index')),
            );
          },
        ),
      ),
    );
  }

  Widget buildSliverList([int count = 5]) {
    return SliverFixedExtentList(
      delegate: SliverChildBuilderDelegate(
            (ctx, index) {
          return ListTile(
            leading: Text("Item $index"),
          );
        },
        childCount: count,
      ),
      itemExtent: 50,
    );
  }
}

///
///使用SliverOverlapAbsorber 和 SliverOverlapInjector 进行优化
///


import 'package:flutter/material.dart';

class SnapAppBar extends StatelessWidget {
  const SnapAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            // 实现 snap 效果
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                floating: true,
                snap: true,
                expandedHeight: 200,
                forceElevated: innerBoxIsScrolled,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/images/fengjing3.webp",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            buildSliverList(5),
          ];
        },
        body: Builder(builder: (BuildContext context) {
          return CustomScrollView(
            slivers: <Widget>[
              SliverOverlapInjector(
                handle:
                NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              ),
              buildSliverList(100),
            ],
          );
        }),
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

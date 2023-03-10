///
/// 嵌套 TabBarView
///
import 'package:flutter/material.dart';
class MSTabBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> _tabs = ['猜你喜欢', '今日特价', '发现更多'];
    // 构建 tabBar
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverOverlapAbsorber(
                handle:
                NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  floating: true,
                  snap: true,
                  forceElevated: innerBoxIsScrolled,
                  title: Text("商城"),
                  bottom: TabBar(
                    tabs: _tabs.map((e) {
                      return Tab(text: e);
                    }).toList(),
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: _tabs.map((e) {
              return Builder(builder: (context) {
                return CustomScrollView(
                  slivers: [
                    SliverOverlapInjector(
                        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                            context)),
                    buildSliverList(20),
                  ],
                );
              });
            }).toList(),
          ),
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

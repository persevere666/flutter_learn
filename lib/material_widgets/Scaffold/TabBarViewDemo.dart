import 'package:flutter/material.dart';

class TabBarViewDemo extends StatefulWidget{
  const TabBarViewDemo({Key? key}):super(key: key);

  @override
  State<TabBarViewDemo> createState() => _TabBarViewDemoState();
}

class _TabBarViewDemoState extends State<TabBarViewDemo> with SingleTickerProviderStateMixin{
  late TabController _tabController;
   @override
   void initState(){
     super.initState();
     _tabController = TabController(length: 3, vsync: this);
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: (){
          },
        ),
        backgroundColor: Colors.red,
        title: const Text("TabBarViewDemo"),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz))
        ],
        bottom: TabBar(
          isScrollable: true,
          indicatorColor: Colors.white,
          indicatorWeight: 2,
          indicatorPadding: const EdgeInsets.all(5),
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: Colors.yellow ,
          unselectedLabelColor: Colors.white,
          labelStyle: const TextStyle(
            fontSize: 14
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 12
          ),
          indicator: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10)
          ),
          controller: _tabController,
          tabs:const [
            Tab(child: Text("关注")),
            Tab(child: Text("热门")),
            Tab(child: Text("视频")),
          ],
         ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView(
            children: const [
              ListTile(title: Text("我是关注列表 "),)
            ],
          ),
          ListView(
            children: const [
              ListTile(title: Text("我是热门列表 "),)

            ],
          ),
          ListView(
            children: const [
              ListTile(title: Text("我是视频列表 "),)
            ],
          ),
      ],),
    );
  }
}
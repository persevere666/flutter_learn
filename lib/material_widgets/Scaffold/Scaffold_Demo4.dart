import 'package:flutter/material.dart';

class ScaffoldDemo4 extends StatefulWidget{
  const ScaffoldDemo4({Key? key}):super(key: key);

  @override
  State<ScaffoldDemo4> createState() => ScaffoldDemo4State();
}

class ScaffoldDemo4State extends State<ScaffoldDemo4> with
    SingleTickerProviderStateMixin
    //AutomaticKeepAliveClientMixin
{
  late TabController _tabController;

  @override
  void dispose(){
    super.dispose();
    _tabController.dispose();
  }
  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
    //监听tabController的改变时间
    _tabController.addListener(() {
      //print(_tabController.index);//获取两次
      if(_tabController.animation!=null &&
          _tabController.animation!.value == _tabController.index){
        print(_tabController.index);//获取点击或者滑动的索引值
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          elevation: 100, //
          backgroundColor:Colors.red,
          title: SizedBox(
            height: 30,
            child: TabBar(
              isScrollable: true,
              indicatorColor: Colors.yellow,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black ,
              indicatorSize: TabBarIndicatorSize.label ,
              controller: _tabController,
              tabs: const [
                Tab(child:  Text("主人1"),),
                Tab(child:  Text("坏人2"),),
                Tab(child:  Text("好人3"),),
                Tab(child:  Text("主人4"),),
                Tab(child:  Text("坏人5"),),
                Tab(child:  Text("好人6"),),
                Tab(child:  Text("坏人7"),),
                Tab(child:  Text("好人8"),),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView(children: const [
            ListTile(title: Text("我是关注列表1"),)
          ],),
          ListView(children: const [
            ListTile(title: Text("我是热门列表2"),)
          ],),
          ListView(children: const [
            ListTile(title: Text("我是视频列表3"),)
          ],),
          ListView(children: const [
            ListTile(title: Text("我是关注列表4"),)
          ],),
          ListView(children: const [
            ListTile(title: Text("我是热门列表5"),)
          ],),
          ListView(children: const [
            ListTile(title: Text("我是视频列表6"),)
          ],),
          ListView(children: const [
            ListTile(title: Text("我是热门列表7"),)
          ],),
          ListView(children: const [
            ListTile(title: Text("我是视频列表8"),)
          ],),
        ],),
    );
  }
}
import 'package:flutter/material.dart';
class AnimatedPositionedDemo1 extends StatefulWidget {

  const AnimatedPositionedDemo1({Key? key}):super(key: key);

  @override
  State<AnimatedPositionedDemo1> createState() => _AnimatedPositionedDemo1State();
}

class _AnimatedPositionedDemo1State extends State<AnimatedPositionedDemo1> {
  //late final TabController  _tabController;
  bool flag = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedPositionedDemo1"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          setState(() {
            flag=!flag;
          });
        },
      ),
      body: Stack(
        children: [
          ListView(
            children: const [
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
            ],
          ),
          AnimatedPositioned(
            right: flag?10:300,
            top: flag?10:400,
            duration: const Duration(seconds:2),
            child: Container(
              width: 60,
              height: 60,
              color:Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
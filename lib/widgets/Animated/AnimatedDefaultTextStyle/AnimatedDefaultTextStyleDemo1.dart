import 'package:flutter/material.dart';
class AnimatedDefaultTextStyleDemo1 extends StatefulWidget {

  const AnimatedDefaultTextStyleDemo1({Key? key}):super(key: key);

  @override
  State<AnimatedDefaultTextStyleDemo1> createState() => _AnimatedDefaultTextStyleDemo1State();
}

class _AnimatedDefaultTextStyleDemo1State extends State<AnimatedDefaultTextStyleDemo1> {
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
          onPressed: () {
            setState(() {
              flag = !flag;
            });
          },
        ),
        body: Center(
          child:  Container(
            alignment: Alignment.center,
            width: 300,
            height: 300,
            color: Colors.blue,
             child:  AnimatedDefaultTextStyle(
               style: TextStyle(fontSize: flag?20:50, color: Colors.red),
               duration:  const Duration(microseconds: 2000),
               child: const Text("你好"),
             ),
          ),
        )
    );
  }
}
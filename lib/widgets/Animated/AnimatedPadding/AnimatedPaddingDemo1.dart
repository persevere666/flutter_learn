import 'package:flutter/material.dart';
class AnimatedPaddingDemo1 extends StatefulWidget {

  const AnimatedPaddingDemo1({Key? key}):super(key: key);

  @override
  State<AnimatedPaddingDemo1> createState() => _AnimatedPaddingDemo1State();
}

class _AnimatedPaddingDemo1State extends State<AnimatedPaddingDemo1> {
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
          title: const Text("AnimatedPaddingDemo1"),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: (){
            setState(() {
              flag=!flag;
            });
          },
        ),
      body: AnimatedPadding(
        curve: Curves.bounceInOut,
        padding: EdgeInsets.fromLTRB(10, flag?10.0:400.0, 0, 0),
        duration: const Duration(microseconds: 1000),
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
        ),

      ),
    );
  }
}
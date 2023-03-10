import 'package:flutter/material.dart';
class AnimatedOpacityDemo1 extends StatefulWidget {

  const AnimatedOpacityDemo1({Key? key}):super(key: key);

  @override
  State<AnimatedOpacityDemo1> createState() => _AnimatedOpacityDemo1State();
}

class _AnimatedOpacityDemo1State extends State<AnimatedOpacityDemo1> {
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
        title: const Text("AnimatedOpacityDemo1 "),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          setState(() {
            flag=!flag;
          });
        },
      ),
      body: AnimatedOpacity(
        opacity: flag?0.2:1,
        curve: Curves.bounceInOut ,
        duration: const Duration(microseconds: 22000),
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
        ),

      ),
    );
  }
}
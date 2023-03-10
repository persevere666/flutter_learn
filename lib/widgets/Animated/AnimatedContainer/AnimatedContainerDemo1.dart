import 'package:flutter/material.dart';
class AnimatedContainerDemo1 extends StatefulWidget {

  const AnimatedContainerDemo1({Key? key}):super(key: key);

  @override
  State<AnimatedContainerDemo1> createState() => _AnimatedContainerDemo1State();
}

class _AnimatedContainerDemo1State extends State<AnimatedContainerDemo1> {
  //late final TabController  _tabController;
  bool flag = true;
  @override
  void initState() {
    super.initState();
    //_tabController =
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedContainerDemo1"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          setState(() {
            flag=!flag;
          });
        },
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(microseconds: 1000),
          width: flag?200:300,
          height: flag?200:300,
          color: Colors.yellow,
          transform: flag?Matrix4.translationValues( 0, 0, 0):Matrix4.translationValues(100, 0, 0),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
class AnimatedContainerDemo2 extends StatefulWidget {

  const AnimatedContainerDemo2({Key? key}):super(key: key);

  @override
  State<AnimatedContainerDemo2> createState() => _AnimatedContainerDemo2State();
}

class _AnimatedContainerDemo2State extends State<AnimatedContainerDemo2> {
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
        title: const Text("AnimatedContainerDemo2"),
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
              ListTile(
                title: Text("我是一个列表"),
              ),
            ],
          ),
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child:AnimatedContainer(
                duration: const Duration(microseconds: 1000),
                width: 200,
                height: double.infinity,
                color: Colors.yellow,
                transform: flag?Matrix4.translationValues(-200, 0, 0)
                    : Matrix4.translationValues(0, 0, 0),
            ),
          )
        ],
      ),
    );
  }
}
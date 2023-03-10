import 'package:flutter/material.dart';
class AnimatedSwitcherDemo1 extends StatefulWidget {

  const AnimatedSwitcherDemo1({Key? key}):super(key: key);

  @override
  State<AnimatedSwitcherDemo1> createState() => _AnimatedSwitcherDemo1State();
}

class _AnimatedSwitcherDemo1State extends State<AnimatedSwitcherDemo1> {
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
            color: Colors.yellow,
            child:  AnimatedSwitcher(
              transitionBuilder: ((child,animation){//可以改变动画效果
                return ScaleTransition(
                    scale: animation,
                  child: //child,
                  FadeTransition(opacity: animation, child: child,)

                );
              }),
              duration:  const Duration(microseconds: 5000),
              child: Text(key:UniqueKey(), flag?"你好呀":"我一点都不好",)  

              //flag ? const CircularProgressIndicator()
              //    :Image.network("https://c-ssl.duitang.com/uploads/item/201703/30/20170330221558_zhin3.jpeg")

              ,
            ),
          ),
        )
    );
  }
}
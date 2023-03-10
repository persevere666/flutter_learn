import 'package:flutter/material.dart';

class AnimatedListDemo1 extends StatefulWidget{
  const AnimatedListDemo1({Key? key}):super(key:key);
  //
  @override
  State<AnimatedListDemo1> createState() => _AnimatedListDemo1State();
}
class _AnimatedListDemo1State extends State<AnimatedListDemo1>{
  final _globalKey = GlobalKey<AnimatedListState>();
  List<String> list = [
    '第1条数据',
    '第2条数据',
    '第3条数据'
  ];
  @override
  Widget build(BuildContext context){
    return
      Scaffold(
          appBar: AppBar(
            title: const Text("these are material widgets"),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
              setState(() {
                list.add('我是新增加的数据');
                _globalKey.currentState!.insertItem(list.length-1);
              });
            }, 
          ),
          body:AnimatedList(
             initialItemCount: list.length,
            itemBuilder:  ((context,index,animation){
              return FadeTransition(
                  opacity: animation,
                child: ListTile(
                  title: Text(list[index]),
                ),
              );
            }),
          ),
      );
  }
}
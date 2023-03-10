import 'dart:async';

import 'package:flutter/material.dart';

class AnimatedListDemo1 extends StatefulWidget{
  const AnimatedListDemo1({Key? key}):super(key:key);
  //
  @override
  State<AnimatedListDemo1> createState() => _AnimatedListDemo1State();
}
class _AnimatedListDemo1State extends State<AnimatedListDemo1>{
  bool flag = true;
  final _globalKey = GlobalKey<AnimatedListState>();
  List<String> list = [
    '第1条数据',
    '第2条数据',
    '第3条数据'
  ];
  Widget _buildItem(index){
    return ListTile(
      key:ValueKey(index),
        title: Text(list[index]),
        trailing: IconButton(
            onPressed: (){
              _deleteItem(index);
            },
            icon:const Icon(Icons.delete)
        )
    );
  }
  _deleteItem(index){
    print("删除的索引$index");
    if(flag && _globalKey.currentState!=null){
      _globalKey.currentState!.removeItem(index, (context, animation){
        var removeItem=_buildItem(index);
        list.removeAt(index);
        return FadeTransition(
          opacity: animation,
          child:  removeItem,
        );
      });
      Timer.periodic(const Duration(microseconds: 500), (timer) {
        flag=true;
        timer.cancel();
      });
    }
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
          appBar: AppBar(
            title: const Text("AnimatedListDemo1"),
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: (){
              if(_globalKey.currentState!=null) {
                setState(() {
                  list.add('我是新增加的数据');
                  _globalKey.currentState!.insertItem(list.length - 1);
                });
              }
            }, 
          ),
          body:AnimatedList(
            key:_globalKey,
            initialItemCount: list.length,
            itemBuilder:  ((context,index,animation){
              return ScaleTransition(
                scale: animation,
                child: _buildItem(index),
              );
            }),
          ),
      );
  }
}
import 'package:flutter/material.dart';

class PageViewDemo2  extends StatefulWidget{
  const PageViewDemo2({Key? key}): super(key: key);

  @override
  State<PageViewDemo2> createState() => _PageViewDemo2State();
}
class _PageViewDemo2State extends State<PageViewDemo2>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("this is PageView Demo 2"),
      ),
      body: PageView.builder(
        itemCount: 10 ,
        itemBuilder: (context, index){
          return Center(
            child: Text(
              "第$index屏",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          );
        },
      ),
    );
  }
}
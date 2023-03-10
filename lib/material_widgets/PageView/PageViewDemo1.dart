import 'package:flutter/material.dart';

class PageViewDemo1  extends StatefulWidget{
  const PageViewDemo1({Key? key}): super(key: key);

  @override
  State<PageViewDemo1> createState() => _PageViewDemo1State();
}
class _PageViewDemo1State extends State<PageViewDemo1>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("this is PageView Demo 1"),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,//配置PageView的滑动方向，默认水平
         children: [
            Center(
              child: Text(
                "第一屏",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
           Center(
             child: Text(
               "第1屏",
               style: Theme.of(context).textTheme.headlineLarge,
             ),
           ),
           Center(
             child: Text(
               "第2屏",
               style: Theme.of(context).textTheme.headlineLarge,
             ),
           ),
           Center(
             child: Text(
               "第3屏",
               style: Theme.of(context).textTheme.headlineLarge,
             ),
           ),
           Center(
             child: Text(
               "第4屏",
               style: Theme.of(context).textTheme.headlineLarge,
             ),
           ),
         ],
      ),
    );
  }
}
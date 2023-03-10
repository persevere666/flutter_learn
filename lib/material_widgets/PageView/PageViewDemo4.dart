import 'dart:async';

import 'package:flutter/material.dart';

class PageViewDemo4  extends StatefulWidget{
  const PageViewDemo4({Key? key}): super(key: key);

  @override
  State<PageViewDemo4> createState() => _PageViewDemo4State();
}
class _PageViewDemo4State extends State<PageViewDemo4>{

  late List<Widget> list;
  int _currentIndex = 0;
  late PageController _pageController;
  late Timer timer;
  @override
  void initState(){
    super.initState();
    list = [
      SizedBox(
        width: double.infinity,
        height: 200,
        child: Image.network(
          "https://c-ssl.duitang.com/uploads/item/201902/24/20190224235640_lahmw.jpg",
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(
        width: double.infinity,
        height: 200,
        child: Image.network(
          "https://c-ssl.duitang.com/uploads/item/201902/24/20190224234932_qcpsx.jpg",
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(
        width: double.infinity,
        height: 200,
        child: Image.network(
          "https://c-ssl.duitang.com/uploads/item/201902/24/20190224235640_lahmw.jpg",
          fit: BoxFit.cover,
        ),
      )
    ];
    _pageController  = PageController(initialPage: 0);
    //创建定时器
    timer = Timer.periodic(const Duration(seconds: 3), (_tmpTimer) {
      _pageController.animateToPage(
          (_currentIndex+1)%list.length,
          duration: const Duration(microseconds: 200),
          curve: Curves.linear
      );
    });
  }
  @override
  void dispose(){
    timer.cancel();
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("this is PageView Demo 4"),
      ),
      body: Stack (
        children: [
          SizedBox(
            height: 200,
            child:PageView.builder(
                controller: _pageController,
                onPageChanged: (index){
                  setState(() {
                    _currentIndex = index % list.length;
                  });
                },
                itemBuilder: (context, index){
                  return list[index%list.length];
                }
            ),
          ),
          Positioned(
              right: 0,
              //left: 0,
              left: MediaQuery.of(context).size.width*0.45,
              //right: MediaQuery.of(context).size.width*0.5,
              bottom: 5,
              child: Row(
                children: List.generate(3, (index){
                  return Container(
                      margin: const EdgeInsets.all(5),
                      width: 10,
                      height: 10,
                      decoration:BoxDecoration(
                        color:_currentIndex==index?Colors.blue:Colors.grey,
                        //borderRadius: BorderRadius.circular(5),//变为圆的两种方式
                        shape: BoxShape.circle
                      ),
                      //child: Text("$index")
                  );
                }).toList(),
              )
          )
        ],
      )
    );
  }
}
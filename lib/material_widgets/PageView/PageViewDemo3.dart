import 'package:flutter/material.dart';

class PageViewDemo3 extends StatefulWidget{
  const PageViewDemo3({Key? key}): super(key: key);

  @override
  State<PageViewDemo3> createState() => _PageViewDemo3State();
}
class _PageViewDemo3State extends State<PageViewDemo3>{

  List<Widget> list = [];

  @override
  void initState(){
    super.initState();
    for(int i=0; i<10; i++){
       list.add(
           Center(
             child: Text(
               "第$i屏",
               style: const  TextStyle(
                 fontSize:  60
               ),
             ),
           )
       );
    }
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("this is PageView Demo 2"),
      ),
      body: PageView(
        onPageChanged: (index){
          if(index+2==list.length){
            setState(() {
              for(int i=0; i<10; i++){
                list.add(
                    Center(
                      child: Text(
                        "第$i屏",
                        style: const  TextStyle(
                            fontSize:  60
                        ),
                      ),
                    )
                );
              }
            });
          }
        },
        scrollDirection: Axis.vertical,
        children: list ,
      ),
    );
  }
}
import 'package:flutter/material.dart';


class GridViewDemo extends StatelessWidget {
  const GridViewDemo({Key? key}) : super(key: key);

  List<Widget> _initGridViewData(){
    List<Widget> tmpList = [];
    for(int i=0; i<12 ; i++){
      tmpList.add(
        Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
            child: Text(
              "第$i个元素",
              style: const TextStyle(fontSize: 15),
            )
        )
      );
    }
    return tmpList;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("this is a GridViewDemo"),),
      body:ListView(
        children: [
          GridView.count(
            padding: const EdgeInsets.all(10 ),
            //ListView中嵌套GridView要指定shrinkWrap:true
            //但是没有滑动效果
            shrinkWrap:true,
            crossAxisSpacing: 10,//水平子widget之间的间距
            mainAxisSpacing: 10, //垂直子widget之间的间距
            crossAxisCount: 3,
            childAspectRatio: 0.7,
            children: _initGridViewData(),
          ),
          GridView.extent(
            maxCrossAxisExtent: 200,
            shrinkWrap: true,
            children: _initGridViewData(),
          )
        ],
      ),
    );
  }
}

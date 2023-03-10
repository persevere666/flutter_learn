//https://blog.csdn.net/yb1314111/article/details/128202006

import 'package:flutter/material.dart';
class ChoiceClipDemo1 extends StatefulWidget{
  const ChoiceClipDemo1({Key? key}) : super(key: key);

  @override
  State<ChoiceClipDemo1> createState() => ChoiceClipDemo1State();

}

class ChoiceClipDemo1State extends State<ChoiceClipDemo1> {
  ///当前选中的索引
  int? _value = 1;

  final List<Map<String, dynamic>> _tagList = [
    {"tag": "早起", "index": 0},
    {"tag": "早睡", "index": 1},
    {"tag": "精神", "index": 2},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ChoiceClip")),
      body: Center(
        ///核心代码
        child: buildChoiceClip(),
      ),
    );
  }


  Widget buildChoiceClip() {
    return Wrap(
      children: _tagList.map((e) => Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: buildItem(e),
      ))
          .toList(),
    );
  }
  ///构建每一个 ChoiceChip
  ChoiceChip buildItem(Map<String, dynamic> map) {
    String tag = map["tag"];
    int index = map["index"];
    return ChoiceChip(
      label: Text(tag),
      selected: _value == index,
      onSelected: (bool selected) {
        setState(() {
          _value = selected ? index : null;
        });
      },
      labelStyle: TextStyle(
        color: _value == index ? Colors.white : Colors.black,
      ),
      selectedColor: Colors.red,
      surfaceTintColor: Colors.white,
    );
  }
}

import 'package:flutter/material.dart';

class KeepAliveDemo1  extends StatefulWidget{
  const KeepAliveDemo1({Key? key}): super(key: key);

  @override
  State<KeepAliveDemo1> createState() => _KeepAliveDemo1State();
}
class _KeepAliveDemo1State extends State<KeepAliveDemo1> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: const Text("this is a KeepAlive Demo1",)
      ),
      body: PageView.builder(
        itemCount: 10,
        itemBuilder: (context, index){
          return MyContainer(number: index,);
        }
      )
    );
  }

}

class MyContainer  extends StatefulWidget{
  final int number;
  const  MyContainer({Key? key, required this.number}): super(key: key);

  @override
  State<MyContainer> createState() => _MyContainerState();
}
class _MyContainerState  extends State<MyContainer> with AutomaticKeepAliveClientMixin{

  @override
  Widget build(BuildContext context){
    print(widget.number);
    return Center(
      child:Text(
        "第${widget.number}屏",
        style: const TextStyle(
            fontSize:  60
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
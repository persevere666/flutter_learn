import 'package:flutter/material.dart';


///key 分为两大类Localkey和Globalkey两大类
///Loalkey分为ValueKey，ObjectKey，UniqueKey
///Globalkey分为GlobalKey和GlobalObjectKey
///

class KeyDemo1 extends StatefulWidget{
  const KeyDemo1({Key? key}):super(key: key);

  @override
  State<KeyDemo1> createState() => _KeyDemo1State();
}

class _KeyDemo1State extends State<KeyDemo1>{
  List<Widget> list = [
    const Box(key:ValueKey("1"), color:Colors.red),
    Box(key:UniqueKey(), color:Colors.yellow),
    const Box(key:ValueKey("2"), color:Colors.blue),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            list.shuffle();
          });
        },
        child: const Icon(Icons.refresh),
      ),
      appBar: AppBar(
        title: const Text("this is a demo for key"),
      ),
      body:  MediaQuery.of(context).orientation==Orientation.portrait?Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: list,
      ):Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: list,
      ),
    );
  }
}

class Box extends StatefulWidget{

  final Color color;

  const Box({Key? key, required this.color}):super(key: key);

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box>{
  int _count = 0;
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.blue,
      height: 200,
      width: 200,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(widget.color)
          ),
          onPressed: (){
            setState(() {
              _count++;
            });
          },
          child: Text("$_count", style: Theme.of(context).textTheme.headlineMedium,)
      ),
    );
  }
}
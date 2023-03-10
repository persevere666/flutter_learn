import 'package:flutter/material.dart';


///key 分为两大类Localkey和Globalkey两大类
///Loalkey分为ValueKey，ObjectKey，UniqueKey
///Globalkey分为GlobalKey和GlobalObjectKey
///

class KeyDemo2 extends StatefulWidget{
  const KeyDemo2({Key? key}):super(key: key);

  @override
  State<KeyDemo2> createState() => _KeyDemo2State();
}

class _KeyDemo2State extends State<KeyDemo2>{

  final GlobalKey _globalKey1 = GlobalKey();
  final GlobalKey _globalKey2 = GlobalKey();
  final GlobalKey _globalKey3 = GlobalKey();
  late List<Widget> list;
  @override
  void initState(){
    super.initState();
    list = [
      Box(key:_globalKey1, color:Colors.red),
      Box(key:_globalKey2, color:Colors.yellow),
      Box(key:_globalKey3, color:Colors.blue),
    ];
  }
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
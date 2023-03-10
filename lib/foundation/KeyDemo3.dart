import 'package:flutter/material.dart';


///key 分为两大类Localkey和Globalkey两大类
///Loalkey分为ValueKey，ObjectKey，UniqueKey
///Globalkey分为GlobalKey和GlobalObjectKey
///

class KeyDemo3 extends StatefulWidget{
  const KeyDemo3({Key? key}):super(key: key);

  @override
  State<KeyDemo3> createState() => _KeyDemo3State();
}

class _KeyDemo3State extends State<KeyDemo3>{

  final GlobalKey _globalKey = GlobalKey();
  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            //获取currentState widget的属性
            var boxState = _globalKey.currentState as _BoxState;
            print(boxState._count);
            //获取子Widget
            var boxWidget = _globalKey.currentWidget as Box;
             //获取子组件渲染的属性
            var renderBox = _globalKey.currentContext!.findRenderObject() as RenderBox;
            print(renderBox.size);
          });
        },
        child: const Icon(Icons.add ),
      ),
      appBar: AppBar(
        title: const Text("this is a demo3 for key"),
      ),
      body:   Center(
        child: Box(key:_globalKey, color: Colors.red,),
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
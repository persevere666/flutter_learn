import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_learn/material_widgets/KeepAlive/KeepAliveDemo1.dart';
import 'package:flutter_learn/material_widgets/PageView/PageViewDemo1.dart';
import 'package:flutter_learn/material_widgets/PageView/PageViewDemo2.dart';
import 'package:flutter_learn/material_widgets/PageView/PageViewDemo3.dart';
import 'package:flutter_learn/material_widgets/PageView/PageViewDemo4.dart';
import 'package:flutter_learn/material_widgets/Scaffold/Scaffold_Demo1.dart';
import 'package:flutter_learn/material_widgets/Scaffold/Scaffold_Demo2.dart';
import 'package:flutter_learn/material_widgets/Scaffold/Scaffold_Demo3.dart';
import 'package:flutter_learn/material_widgets/Scaffold/Scaffold_Demo4.dart';
import "package:flutter_learn/material_widgets/Dialog/DialogDemo.dart";
class MaterialWidgetsPage extends StatefulWidget{
  const MaterialWidgetsPage({Key? key}):super(key:key);
  //
  @override
  State<MaterialWidgetsPage> createState() => _MaterialWidgetsPageState();
}
class _MaterialWidgetsPageState extends State<MaterialWidgetsPage>{
  @override
  Widget build(BuildContext context){
    return
      Scaffold(
        appBar: AppBar(
          title: const Text("these are material widgets"),
        ),
          body:ListView (
            children: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) {
                              return const ScaffoldDemo1();
                            }
                        )
                    );
                  },
                  child: const Text("ScaffoldDemo1")
              ),
              CupertinoButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) {
                              return const ScaffoldDemo2();
                            }
                        )
                    );
                  },
                  child: const Text("ScaffoldDemo2")
              ),
              CupertinoButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) {
                              return const ScaffoldDemo3();
                            }
                        )
                    );
                  },
                  child: const Text("ScaffoldDemo3")
              ),
              CupertinoButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) {
                              return const ScaffoldDemo4();
                            }
                        )
                    );
                  },
                  child: const Text("ScaffoldDemo4")
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) {
                              return const DialogDemo();
                            }
                        )
                    );
                  },
                  child: const Text("Dialog Demo")
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) {
                              return const PageViewDemo1();
                            }
                        )
                    );
                  },
                  child: const Text("PageView Demo1")
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) {
                              return const PageViewDemo2();
                            }
                        )
                    );
                  },
                  child: const Text("PageView.build Demo2")
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) {
                              return const PageViewDemo3();
                            }
                        )
                    );
                  },
                  child: const Text("PageView Demo3")
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) {
                              return const PageViewDemo4();
                            }
                        )
                    );
                  },
                  child: const Text("PageView Demo4")
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) {
                              return const KeepAliveDemo1();
                            }
                        )
                    );
                  },
                  child: const Text("KeepAlive Demo1")
              ),
            ],
          )
      );
  }
}
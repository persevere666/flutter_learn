import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_learn/material_widgets/Button/ButtonDemo.dart';
import 'package:flutter_learn/material_widgets/Card/CardDemo.dart';
import 'package:flutter_learn/material_widgets/Icon/IconDemo.dart';
import 'package:flutter_learn/material_widgets/KeepAlive/KeepAliveDemo1.dart';
import 'package:flutter_learn/material_widgets/PageView/PageViewDemo1.dart';
import 'package:flutter_learn/material_widgets/PageView/PageViewDemo2.dart';
import 'package:flutter_learn/material_widgets/PageView/PageViewDemo3.dart';
import 'package:flutter_learn/material_widgets/PageView/PageViewDemo4.dart';
import 'package:flutter_learn/material_widgets/Scaffold/ScaffoldDemo.dart';
import 'package:flutter_learn/material_widgets/Scaffold/FloatingActionButtonDemo.dart';
import "package:flutter_learn/material_widgets/Dialog/DialogDemo.dart";
import 'package:flutter_learn/material_widgets/Scaffold/TabBarViewDemo.dart';
import 'package:flutter_learn/material_widgets/Scaffold/TabControllerDemo.dart';
import 'package:flutter_learn/material_widgets/TextFormField/TextFormFieldDemo.dart';
import 'package:flutter_learn/material_widgets/Wrap/WrapDemo.dart';
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
                              return const ScaffoldDemo();
                            }
                        )
                    );
                  },
                  child: const Text("ScaffoldDemo")
              ),
              CupertinoButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) {
                              return const FloatingActionButtonDemo();
                            }
                        )
                    );
                  },
                  child: const Text("FloatingActionButtonDemo")
              ),
              CupertinoButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) {
                              return const TabBarViewDemo();
                            }
                        )
                    );
                  },
                  child: const Text("TabBarViewDemo")
              ),
              CupertinoButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) {
                              return const TabControllerDemo();
                            }
                        )
                    );
                  },
                  child: const Text("TabControllerDemo")
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
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) {
                              return const IconDemo();
                            }
                        )
                    );
                  },
                  child: const Text("IconDemo")
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) {
                              return const CardDemo();
                            }
                        )
                    );
                  },
                  child: const Text("CardDemo")
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) {
                              return const ButtonDemo();
                            }
                        )
                    );
                  },
                  child: const Text("ButtonDemo")
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) {
                              return const WrapDemo();
                            }
                        )
                    );
                  },
                  child: const Text("WrapDemo")
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) {
                              return const TextFormFieldDemo();
                            }
                        )
                    );
                  },
                  child: const Text("TextFormFieldDemo")
              ),
            ],
          )
      );
  }
}
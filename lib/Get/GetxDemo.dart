import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxDemo extends StatefulWidget {
  const GetxDemo({Key? key}) : super(key: key);

  @override
  _GetxDemoState createState() => _GetxDemoState();
}

class _GetxDemoState extends State<GetxDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: (){
              Get.defaultDialog(
                title:"提示信息",
                middleText: "您确定要删除吗？",
                confirm: ElevatedButton(
                    onPressed: (){
                      print("确定");
                    },
                    child: const Text("确定")
                ),

                cancel: ElevatedButton(
                    onPressed: (){
                      print("取消");
                      Get.back();
                    },
                    child: const Text("取消")
              ),
            );
            },
            child: const Text("Get.defaultDialog")
          ),
          ElevatedButton(
              onPressed: (){
                Get.snackbar(
                    "提示？", "您还没有登陆",
                  snackPosition: SnackPosition.TOP
                );
              },
              child: const Text("Get.snackbar")
          ),
          ElevatedButton(
              onPressed: (){
                Get.bottomSheet(
                  Container(
                    color: Get.isDarkMode?Colors.black26: Colors.white,
                    height: 200,
                    child:  Column(
                      children: [
                         ListTile(
                           leading: Icon(
                             Icons.wb_sunny_outlined,
                             color: Get.isDarkMode?Colors.white:Colors.black87,
                           ),
                           onTap: (){
                             Get.changeTheme(ThemeData.light());
                             Get.back();
                           },
                           title: Text( "白天模式",
                             style: TextStyle(color: Get.isDarkMode?Colors.white:Colors.black87),
                           ),
                         ),
                        ListTile(
                          leading: Icon(
                            Icons.wb_sunny,
                            color: Get.isDarkMode?Colors.white:Colors.black87,
                          ),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                            Get.back();
                          },
                          title: Text(
                            "夜晚模式",
                            style: TextStyle(color: Get.isDarkMode?Colors.white:Colors.black87),),
                        ),
                      ],
                    ),
                  )
                );
              },
              child: const Text("Get.bottomSheet")
          ),
          ElevatedButton(
              onPressed: (){
                //Get.offAll();
              },
              child: const Text("Get.offAll"))
        ],
      ),
    );
  }
}

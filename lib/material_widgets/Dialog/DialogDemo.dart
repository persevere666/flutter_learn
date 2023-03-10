
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/material_widgets/dialog/MyDialog.dart';

class DialogDemo extends StatefulWidget{
  const DialogDemo({Key? key}):super(key: key);

  @override
  State<DialogDemo> createState() => _DialogDemoState();
}

class _DialogDemoState extends State<DialogDemo>{

  void _alterDialog() async{
    var result = await showDialog(
        barrierDismissible: true,//点击背景，dialog是否消失
        context: context,
        builder: (context){
          return AlertDialog(
            title:const Text("提示信息"),
            content: const Text("您确定要删除吗？ "),
            actions: [
               TextButton(
                   onPressed:(){
                     Navigator.of(context).pop("ok");
                   },
                   child: const Text("确定")
               ),
              TextButton(
                  onPressed:(){
                    Navigator.of(context).pop("dismiss");
                  },
                  child: const Text("取消")
              )
            ],
          );

        }
    );
    //print(result);
  }
  ///
  ///
  void _simpleDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context){
          return SimpleDialog(
            title: const Text("请选择语言"),
            children: [
               SimpleDialogOption(
                 onPressed: (){
                   Navigator.pop(context, "汉语");
                 },
                 child:  const Text("汉语"),
               ),
              SimpleDialogOption(
                onPressed: (){
                },
                child: const Text("英语"),
              ),
              SimpleDialogOption(
                onPressed: (){
                  Navigator.of(context).pop("日语");
                },
                child: const Text("日语"),
              ),
            ],
          );
        }
    );
  }


  void _modalBottomSheet (){
    showModalBottomSheet(
        context: context,
        builder: (context){
          return SizedBox(
            height: 400,
            child: Column(
              children: [
                ListTile(
                  title: const Text("分享"),
                  onTap: (){
                    Navigator.of(context).pop("分享");
                  },
                ),
                const Divider(),
                ListTile(
                  onTap: (){
                    Navigator.of(context).pop("收藏");
                  },
                  title: const Text("收藏"),
                ),
                const Divider(),
                const ListTile(title: Text("取消"),),
                const Divider(),
              ],
            ),
          );
        }
    );

  }
  void _toast(){

  }
  void _myDialog() async {
    var result = await showDialog(
        barrierDismissible: true,//点击背景，dialog是否消失
        context: context,
        builder: (context){
          return MyDialog(
            onTap: (){
              Navigator.of(context).pop("我是自定义的Dialog点击按钮事件");
            },
          );
        }
    );
    print(result);
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("dialog"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: _alterDialog ,
                child: const Text("alter弹出框--AlertDialog")
            ),
            ElevatedButton(
                onPressed: _simpleDialog ,
                child: const Text("alter弹出框--SimpleDialog")
            ),
            ElevatedButton(
                onPressed: _modalBottomSheet ,
                child: const Text("alter弹出框--showModalBottomSheet")
            ),
            ElevatedButton(
                onPressed: _myDialog ,
                child: const Text("alter弹出框--自定义dialog ")
            ),
          ],
        ),
      ),
    );
  }

}
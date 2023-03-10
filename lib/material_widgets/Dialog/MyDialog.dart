import 'package:flutter/material.dart';

class MyDialog extends Dialog{
   final Function()? onTap;
   const MyDialog({Key? key,required this.onTap}):super(key: key);

   @override
   Widget build(BuildContext context){
     return  Material(
       type: MaterialType.transparency ,//设置背景透明度
       child: Center(
           child:Container(
             height: 300,
             width: 300,
             color: Colors.red,
             child: Column(
               children: [
                 Padding(
                     padding: const EdgeInsets.all(5),
                     child: Stack(
                       children: [
                         const Align(
                           alignment: Alignment.centerLeft,
                           child: Text("提示"),
                         ),
                         Align(
                           alignment: Alignment.centerRight,
                           child: InkWell(
                             onTap: onTap,
                             child : const Icon(Icons.close)
                           ),
                         )
                       ],
                     ),
                 ),
                 const Divider(),
                 const SizedBox(
                   width: double.infinity,
                   child: Text("我是一个提示信息")
                 )
               ],
             ),
           )
       ),
     );
   }
}
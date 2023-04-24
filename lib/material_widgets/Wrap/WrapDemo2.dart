import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WrapDemo2 extends StatelessWidget{
  const WrapDemo2({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context){
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
         Row(
           children: [
              Text("热搜", style: Theme.of(context).textTheme.headlineMedium)
           ],
         ),
        const Divider(),
         Wrap(
           spacing: 10,
           runSpacing: 10 ,
           children: [
             Button("女装", onPressed: (){}),
             Button("笔记本", onPressed: (){}),
             Button("玩具", onPressed: (){}),
             Button("文学", onPressed: (){}),
             Button("时尚", onPressed: (){}),
             Button("古典", onPressed: (){}),
             Button("现代", onPressed: (){}),
           ],
         ),
        const SizedBox(height: 30,),
        Row(
          children: [
            Text("历史记录", style: Theme.of(context).textTheme.headlineMedium)
          ],
        ),
        const Divider(),
        Column(
          children: const [
            ListTile( title:Text("女装")),
            Divider(),
            ListTile( title:Text("男装")),
            Divider(),
            ListTile( title:Text("手机 ")),
            Divider(),
          ],
        ),
        const SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.all(40),
          child:
             OutlinedButton.icon(
               style: ButtonStyle(
                 foregroundColor: MaterialStateProperty.all(
                   Colors.black45
                 ),
               ),
                 onPressed: (){},
                 icon: const Icon(Icons.delete),
                 label: const Text("清空历史记录")
             )
        )
      ],
    );
  }
}




class Button extends StatelessWidget{
  String text;
  void Function()? onPressed;
  Button(this.text, {Key? key, required this.onPressed}):super(key:key);

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                const Color.fromARGB(100, 217, 205, 205)
            ),
            foregroundColor: MaterialStateProperty.all(
                const Color.fromARGB(100, 21, 20, 20)
            )
        ),
        onPressed: onPressed,
        child: Text(text)
    );

  }
}
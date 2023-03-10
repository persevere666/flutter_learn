//https://blog.csdn.net/ww897532167/article/details/125619399
//TextButton ElevatedButton IconButton OutlineButton
//https://blog.csdn.net/convex1009848621/article/details/127747920
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ButtonDemo1 extends StatefulWidget{
  const ButtonDemo1({Key? key}):super(key:key);
  @override
  State<ButtonDemo1> createState() => ButtonDemo1State();
}

class ButtonDemo1State extends State<ButtonDemo1>{

  @override
  Widget build(BuildContext context){
    return ListView(
      children: [
        CupertinoButton(
          padding: EdgeInsets.zero,
          child: Container(
            height: 40,
            width: 160,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: const Text(
              'CupertinoButton',
              style: TextStyle(color: Colors.red),
            ),
          ),
          onPressed: () {},
        )
      ],
    );
  }

}
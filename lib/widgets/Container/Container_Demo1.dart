//https://www.jianshu.com/p/97010cd2f1ff
import 'package:flutter/material.dart';

class ContainerDemo1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(150),
        image: const DecorationImage(
          image:NetworkImage("url"),
          fit: BoxFit.cover
        )
      ),
      child: const Text("test"),
    );
  }


}

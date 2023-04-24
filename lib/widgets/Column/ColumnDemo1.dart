//https://blog.csdn.net/u013290250/article/details/121638167
import 'package:flutter/material.dart';

class ColumnDemo1 extends StatelessWidget {

  const ColumnDemo1({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            color: Colors.red,
            child: const Text('top'),
          ),
          Container(
            width: 100,
            color: Colors.green,
            child: const Text('center'),
          ),
          Container(
            width: 100,
            color: Colors.blueAccent,
            child: const Text('bottom'),
          ),
        ],
      ),
    );
  }
}

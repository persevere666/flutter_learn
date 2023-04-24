import 'package:flutter/material.dart';

class AlignDemo extends StatelessWidget {
  const AlignDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("This is a AlignDemo"),),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 40,
            child: Stack (
              children: const [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("收藏"),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text("购买"),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 40,
            child: Stack (
              children: const [
                Positioned(
                  left: 10,
                  child: Text("收藏"),
                ),
                Positioned(
                  right: 10,
                  child: Text("购买"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

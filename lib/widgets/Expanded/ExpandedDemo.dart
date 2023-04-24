import 'package:flutter/material.dart';

class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("This is a ExpandedDemo"),),
      body: Flex( //也可以换成Row 
        direction: Axis.horizontal,
        children: [
          Expanded(
              flex: 1,
              child: IconContainer( //其内部设置的宽度失效
                const Icon(Icons.home),
                color: Colors.red,
              )
          ),
          Expanded(
              flex: 2,
              child: IconContainer(
                const Icon(Icons.ac_unit_sharp),
                color: Colors.yellow,
              )
          )
        ],
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  Icon icon;
  Color color;
  IconContainer(this.icon,{Key? key, this.color=Colors.red}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: color,
      child: icon,
    );
  }
}




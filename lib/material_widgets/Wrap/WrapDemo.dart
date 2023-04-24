import 'package:flutter/material.dart';
import 'package:flutter_learn/material_widgets/Wrap/WrapDemo1.dart';
import 'package:flutter_learn/material_widgets/Wrap/WrapDemo2.dart';


class WrapDemo extends StatefulWidget {
  const WrapDemo({Key? key}) : super(key: key);

  @override
  State<WrapDemo>  createState() => _WrapDemoState();
}

class _WrapDemoState extends State<WrapDemo> {
  final List<Widget> _list = const [WrapDemo1(),WrapDemo2()];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("WarpDemo"),),
      body: _list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        fixedColor: Colors.red,
        iconSize: 40,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "WrapDemo1"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_location_alt),
            label: "WrapDemo2"
          )
        ],
      ),
    );
  }
}

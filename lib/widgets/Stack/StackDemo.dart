import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: const Text("This is a StackDemo"),),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.only(top: 50),
            children: const [
              ListTile(title: Text("我是1列表"),),
              ListTile(title: Text("我是2列表"),),
              ListTile(title: Text("我是3列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
              ListTile(title: Text("我是一个列表"),),
            ],
          ),
          Positioned(
            left: 0,
            top: 0,
            width: size.width  , //配置子元素的宽度和高度，没法使用double.infinity
            height: 44,    //配置子元素的宽度和高度，必须，否则，无法显示
            child: Row(
              children: [
                Expanded(
                    flex:1,
                    child:Container(
                      alignment: Alignment.center,
                      height: 44,
                      color: Colors.black,
                      child: const Text(
                          "二级导航",
                        style: TextStyle(color: Colors.white ),
                      ),

                    )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

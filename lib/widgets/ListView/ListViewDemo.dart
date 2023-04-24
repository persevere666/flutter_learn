import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("This is ListViewDemo"),),
      body: ListView(
        //scrollDirection: Axis.horizontal,
        children: [
          const ListTile(
            leading: Icon(Icons.home),
            title: Text("首页"),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.assignment),
            title: Text("全部订单"),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.payment),
            title: Text("待付款"),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.favorite),
            title: Text("我的收藏"),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.people),
            title: Text("在线客服"),
            trailing: Icon(Icons.chevron_right_sharp),
          ),
          const Divider(),
          Image.network("https://c-ssl.duitang.com/uploads/item/202005/10/20200510203928_ffajy.jpeg"),
          Container(
            padding: const EdgeInsets.all(10),
            height: 44,
            child: const Text(
                "我是一个标题",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22),
            ),
          )
        ],
      ),
    );
  }
}

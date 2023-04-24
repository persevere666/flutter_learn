import 'package:flutter/material.dart';


class CardDemo extends StatelessWidget {
  const CardDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("This is a CardDemo"),),
      body: ListView(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            elevation: 20,
            child: Column(
              children: const [
                ListTile(
                  title:  Text("张三", style: TextStyle(
                    fontSize: 28
                  ),),
                  subtitle: Text("高级软件工程师"),
                ),
                Divider(),
                ListTile(
                  title: Text("电话：15120002893"),
                ),
                Divider(),
                ListTile(
                  title: Text("地址：北京市海淀区xxx"),
                )
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(10)
            ),
            elevation: 20,
             margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 16/9,
                  child: Image.network(
                      "https://c-ssl.duitang.com/uploads/item/202005/10/20200510203928_ffajy.jpeg",
                      fit:BoxFit.cover
                  ),
                ),
                ListTile(
                  leading: ClipOval(
                    child: Image.network(
                      "https://c-ssl.duitang.com/uploads/item/202005/10/20200510203928_ffajy.jpeg",
                      height: 40,
                      width: 40,
                      fit: BoxFit.fill,
                    ),
                  ),
                  title:  const Text("title"),
                  subtitle: const Text("subtitle"),
                ),
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            elevation: 20,
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 16/9,
                  child: Image.network(
                      "https://c-ssl.duitang.com/uploads/item/202005/10/20200510203928_ffajy.jpeg",
                      fit:BoxFit.cover
                  ),
                ),
                const ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://c-ssl.duitang.com/uploads/item/202005/10/20200510203928_ffajy.jpeg"
                    ),
                  ),
                  title:  Text("title"),
                  subtitle: Text("subtitle"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


//
import 'package:flutter/material.dart';

class ScaffoldDemo2 extends StatefulWidget{
  const ScaffoldDemo2({Key? key}):super(key: key);

  @override
  State<ScaffoldDemo2> createState() => ScaffoldDemo2State();
}

class ScaffoldDemo2State extends State<ScaffoldDemo2>{

  int _currentIndex=0;

  final List<Widget> _widgetList = const [
    Center(child:Text("首页")),
    Center(child:Text("分类")),
    Center(child:Text("消息")),
    Center(child:Text("设置")),
    Center(child:Text("用户")),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("this is another Scaffold demo"),),
      drawer: Drawer(
        child: Column(
          children:[
            Row(
              children: [
                 Expanded(
                    flex: 1,
                    child: UserAccountsDrawerHeader(
                      accountName: const Text("张三"),
                      accountEmail: const Text("123456@qq.com"),
                      currentAccountPicture: const CircleAvatar(
                        backgroundImage: NetworkImage("https://c-ssl.duitang.com/uploads/item/201703/30/20170330221558_zhin3.jpeg"),
                      ),
                      otherAccountsPictures: [
                        Image.network("https://c-ssl.duitang.com/uploads/item/201902/24/20190224235231_zbdrs.jpg"),
                        Image.network("https://c-ssl.duitang.com/uploads/item/201806/26/20180626233414_dondp.jpg")
                        
                      ],
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("https://c-ssl.duitang.com/uploads/item/201806/30/20180630132006_KcxlX.jpeg")
                        )
                      ),
                    )
                )
              ],
            ),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text("个人中心"),
            ),
            const Divider(),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text("系统设置"),
            ),
            const Divider(),
          ],
        ),
      ),
      endDrawer: const Text("右边栏"),
      body: _widgetList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red, //选中是的颜色
        iconSize: 40, //底部菜单大小
        currentIndex: _currentIndex,//第几个菜单选中
        type: BottomNavigationBarType.fixed,//底部有4个及以上菜单
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label:"首页"
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.category),
              label:"分类"
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.message),
              label:"消息"
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.settings),
              label:"设置"
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.people),
              label:"用户"
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              _currentIndex = 2;
            });
          },
          backgroundColor: _currentIndex==2?Colors.red:Colors.blue,
          child: Container(
            height: 60,
            width: 60,
            padding: const EdgeInsets.all(2),
            margin: const EdgeInsets.only(top:4),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child:const Icon(Icons.add),
          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
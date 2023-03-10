import 'package:flutter_learn/foundation/KeyDemo1.dart';
import 'package:flutter_learn/foundation/KeyDemo2.dart';
import 'package:flutter_learn/foundation/KeyDemo3.dart';
import 'package:flutter_learn/material_widgets/material_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/widgets/widgets_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        )
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  //final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //late final TabController  _tabController;
  @override
  void initState(){
    super.initState();
    //_tabController =
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to the world of flutter"),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (ctx, innerBoxIsScrolled){
          return [
            SliverAppBar(
              title: const Text("常用模块"),
              pinned: true, // 固定在顶部
              forceElevated: innerBoxIsScrolled,
              backgroundColor: Colors.blue,// 是否显示阴影
            ),
          ];
        },
        body: Builder(builder: (BuildContext ctx){
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(//转变为sliver
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const MaterialWidgetsPage()
                          )
                      );
                    },
                    child: const Text("material", selectionColor: Colors.red,)
                ),
              ),
              SliverToBoxAdapter(//转变为sliver
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const KeyDemo1()
                          )
                      );
                    },
                    child: const Text("foundation key demo1", selectionColor: Colors.red,)
                ),
              ),
              SliverToBoxAdapter(//转变为sliver
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const KeyDemo2()
                          )
                      );
                    },
                    child: const Text("foundation key demo2", selectionColor: Colors.red,)
                ),
              ),
              SliverToBoxAdapter(//转变为sliver
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const KeyDemo3()
                          )
                      );
                    },
                    child: const Text("foundation key demo3", selectionColor: Colors.red,)
                ),
              ),
              SliverToBoxAdapter(//转变为sliver
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) =>  const WidgetsWidgets()
                          )
                      );
                    },
                    child: const Text("widgets_widgets", selectionColor: Colors.red,)
                ),
              ),
            ],
          );
        },),
      ),
    );
  }
}

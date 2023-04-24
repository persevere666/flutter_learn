import 'package:flutter/material.dart';
import 'package:flutter_learn/widgets/Hero/HeroPage.dart';
import 'package:flutter_learn/widgets/Hero/HeroRoutes.dart';
import 'package:flutter_learn/widgets/Hero/ListData.dart';
class HeroHomePage extends StatefulWidget {
  const HeroHomePage({Key? key}) : super(key: key);

  @override
  State<HeroHomePage> createState() => _HeroHomePageState();
}

class _HeroHomePageState extends State<HeroHomePage> {

  List<Widget> _getListData(){

    var tmpList = listData.map( (value){
      return GestureDetector(
        onTap: (){
          // Navigator.pushNamed(context, "/hero", arguments: {
          //   "imageUrl" : value.putIfAbsent("imageUrl", () => " ")
          // });
          Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => HeroPage(arguments: {
                    "imageUrl" : value.putIfAbsent("imageUrl", () => " ")
                  })
              )
          );
        },
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(233, 233, 233, 1),
                  width: 1
              )
          ),
          child: Column(
            children: [
              Hero(
                  tag: value.putIfAbsent("imageUrl", () => ""), 
                  child: Image.network(value.putIfAbsent("imageUrl", () => ""))
              ) ,
              const SizedBox(height: 20,),
              Text(
                // value["title"],
                value.putIfAbsent("title", () => ""),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              )
            ],
          ),
        ),

      );
    });
    return tmpList.toList();
  }
  @override
  Widget build(BuildContext context) {
    // return GridView.count(
    //   crossAxisSpacing: 10,
    //   mainAxisSpacing: 10,
    //   padding: const EdgeInsets.all(10),
    //   crossAxisCount: 2,
    //   children: _getListData() ,
    // );

    // return MaterialApp(
    //   onGenerateRoute: onGenerateRoute,
    //   routes: routes,
    //   home:Scaffold(
    //     appBar: AppBar(title: const Text("Hero"),),
    //     body: GridView.count(
    //       crossAxisSpacing: 10,
    //       mainAxisSpacing: 10,
    //       padding: const EdgeInsets.all(10),
    //       crossAxisCount: 2,
    //       children: _getListData() ,
    //     ),
    //   )
    // );
    return Scaffold(
      appBar: AppBar(title: const Text("Hero"),),
      body: GridView.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(10),
        crossAxisCount: 2,
        children: _getListData() ,
      ),
    );
  }
}


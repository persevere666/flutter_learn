//https://www.jianshu.com/p/97010cd2f1ff
import 'package:flutter/material.dart';

class ContainerDemo1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ContainerDemo"),),
      body: Column(
        children: const [
          myContainer1(),
          myContainer2()
        ],
      ),
    );
  }
}
class myContainer1 extends StatelessWidget {
  const myContainer1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child:Container(
          //transform: Matrix4.translationValues(40, 30, 10),//位移
          //transform: Matrix4.rotationZ(1),//旋转
          alignment: Alignment.center,
          width: 300,
          height: 300,
          decoration: BoxDecoration(
              color: Colors.yellow,
              border: Border.all(
                  color: Colors.red,
                  width: 2
              ),
              borderRadius: BorderRadius.circular(150),
              boxShadow: const [
                BoxShadow(
                    color:Colors.black,
                    blurRadius: 10
                )
              ],
              gradient: const LinearGradient(
                  colors:[
                    Colors.red, Colors.yellow
                  ]
              ),
              image: const DecorationImage(
                  image:NetworkImage("http://pic1.win4000.com/wallpaper/d/5513839249e9a.jpg"),
                  fit: BoxFit.cover
              )
          ),
          child: const Text("test"),
        )
    );
  }
}

class myContainer2 extends StatelessWidget {
  const myContainer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 40,
      margin: const EdgeInsets.fromLTRB(0,20,0,0 ),//与外部的距离
      padding: const EdgeInsets.all(2), //与里面元素的距离
      decoration: BoxDecoration(
        color:Colors.blue,
        borderRadius: BorderRadius.circular(10)
      ),
      child: const Text("按钮", style: TextStyle(
        color:Colors.white,
        fontSize: 20
      ),),
    );
  }
}


import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  const ImageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("this is a ImageDemo"),),
      body: ListView(
        children: const [
          ImageDemo1(),
          Circular1(),
          Circular2(),
          ImageAsset(),
        ],
      ),
    );
  }
}
class ImageDemo1 extends StatelessWidget {
  const ImageDemo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration:const BoxDecoration(
        color: Colors.yellow,
      ),
      child: Image.network(
        "http://pic1.win4000.com/wallpaper/d/5513839249e9a.jpg",
        alignment: Alignment.centerLeft,
        scale: 2,//缩小1倍
        ///BoxFit.fill 全图显示，充满
        ///BoxFit.cover 对图片剪裁，充满容器
        ///BoxFit.contain 显示原比例原图
        ///BoxFit.fitWidth/fitHeight 宽度/高度充满 显示可能拉伸，可能裁剪
        ///BoxFit.scaleDown 效果如contain，但只能缩小，不能超越原图
        fit: BoxFit.cover,
        repeat: ImageRepeat.repeat, //在x轴和y轴上平铺
      ),
    );
  }
}


class Circular1 extends StatelessWidget {
  const Circular1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(75),
          color: Colors.yellow,
          image: const DecorationImage(
              image: NetworkImage("http://pic1.win4000.com/wallpaper/d/5513839249e9a.jpg"),
              fit: BoxFit.cover
          )
      ),
      //child: ,
    );
  }
}

class Circular2 extends StatelessWidget {
  const Circular2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: Image.network(
            "http://pic1.win4000.com/wallpaper/d/5513839249e9a.jpg",
          height: 150,
          width: 150,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ImageAsset extends StatelessWidget {
  const ImageAsset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 400,
      child: Image.asset(
          "assets/junfengtian.png"
      ),
    );
  }
}

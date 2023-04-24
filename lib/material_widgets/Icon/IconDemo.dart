///自定义图标
/// 1 去https://www.iconfont.cn/ 下载代码
///
///2 修改pubspec.yaml中的fonts
///
///3 在dart中自定义图标
/// static const IconData book={
///   0xe614,
///   fontFamily:"myIcon",
///   matchTextDirection: true
/// }
///
import "package:flutter/material.dart";

class IconDemo extends StatelessWidget {
  const IconDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("this is a DIY Icon")),
      body: ListView(
        children: const [
          Icon(
            IconsFont.book,
            size: 200,
            color: Colors.red,
          ),
          Icon(
              size:200,
              color:Colors.blue,
              IconsFont.wechat
          )
        ],
      ),

    );
  }
}

class IconsFont{
  static const IconData book = IconData(
    0x3447,
    fontFamily: "Schyler", //来自于pubspec.yaml
    matchTextDirection: true
  );
  static const IconData wechat = IconData(
      0xe73b,
      fontFamily: "Schyler", //来自于pubspec.yaml
      matchTextDirection: true
  );

}
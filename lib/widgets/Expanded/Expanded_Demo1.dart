//https://blog.csdn.net/devnn/article/details/105892081
//Expanded 记住 flex的作用

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(title: Text("Row demo")),
        body: Container(
            color: Colors.green,
            child: Row(children: <Widget>[
              Image.asset(
                "graphyics/face.jpg",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Image.asset(
                "graphyics/face.jpg",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Image.asset(
                "graphyics/face.jpg",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              )
            ])))));


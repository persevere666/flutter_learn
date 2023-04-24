import 'package:flutter/material.dart';


class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("this is a TextDemo"),),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: 400,
            height: 400,
            margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
            decoration:const BoxDecoration(
              color: Colors.yellow
            ),
            child: const Text(
              "TextDemo: test aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: Colors.red,
                fontStyle: FontStyle.italic,
                wordSpacing: 5,
                letterSpacing: 0.2,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

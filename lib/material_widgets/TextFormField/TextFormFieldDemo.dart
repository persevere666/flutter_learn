import "package:flutter/material.dart";

class TextFormFieldDemo extends StatefulWidget {
  const TextFormFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFormFieldDemo> createState() => _TextFormFieldDemoState();
}

class _TextFormFieldDemoState extends State<TextFormFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TextFormFieldDemo"),),
      body: TextFormField(
        decoration: const InputDecoration(
            hintText: "电话号码"
        ),
        autovalidateMode: AutovalidateMode.always,
        validator: (value){
          if(value==null){
            return "请输入电话号码";
          }
          RegExp reg = new RegExp(r"^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\\d{8}$");
          if(!reg.hasMatch(value??"")){
            return "请输入11位电话号码";
          }
          return null;
        },
      ),
    );
  }
}

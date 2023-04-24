import 'package:flutter/material.dart';

class FormDemo2 extends StatefulWidget {
  @override
  State<FormDemo2> createState() => _FormDemoPageState();
}

class _FormDemoPageState extends State<FormDemo2> {
  String? username;
  int? sex;

  String? info;
  List hobby = [
    {
      "checked": true,
      "title": '吃饭',
    },
    {
      "checked": true,
      "title": 'master',
    },
  ];

  List<Widget> _getHobby() {
    List<Widget> tempList = [];
    for (var i = 0; i < this.hobby.length; i++) {
      tempList.add(Row(children: [
        Text(
          this.hobby[i]["title"] + ":",
        ),
        Checkbox(
          value: this.hobby[i]["checked"],
          onChanged: (v) {
            setState(() {
              this.hobby[i]["checked"] = v;
            });
          },
        )
      ]));
    }
    return tempList;
  }
  void _sexChange(v) {
    setState(() {
      this.sex = v;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '学员信息登记表',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "请输入用户名",
              ),
            ),
            Row(
              children: [
                Text("男"),
                Radio(
                  value: 1,
                  groupValue: this.sex,
                  onChanged: this._sexChange,
                ),
                SizedBox(
                  height: 10,
                ),
                Text("女"),
                Radio(
                  value: 2,
                  groupValue: this.sex,
                  onChanged: this._sexChange,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              children: _getHobby(),
            ),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "描述信息",
              ),
              onChanged: (v) {
                setState(() {
                  this.info = v;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                child: const Text("提交信息"),
                onPressed: () {
                  setState(() {
                    print(this.username);
                    print(this.sex);
                    print(this.hobby);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


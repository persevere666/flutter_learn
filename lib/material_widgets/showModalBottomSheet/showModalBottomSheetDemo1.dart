//https://blog.csdn.net/qq_40241320/article/details/126115703
import 'package:flutter/material.dart';

class ShowModalBottomSheetPage extends StatefulWidget {
  const ShowModalBottomSheetPage({Key? key}) : super(key: key);

  @override
  State<ShowModalBottomSheetPage> createState() => ShowModalBottomSheetPageState();
}

class ShowModalBottomSheetPageState extends State<ShowModalBottomSheetPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Function setAnimationState;
  String checkType = '';
  double modalHeight = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('测试弹窗'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            _showBottomModal();
          },
          child: const Text('打开弹窗'),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, // the SingleTickerProviderStateMixin
        duration: const Duration(milliseconds: 2500),
        lowerBound: 200,
        upperBound: 600
    )..addListener(() {
        setAnimationState(() {
          modalHeight = _controller.value;
        });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _showBottomModal() {
    Container innerContainer(IconData icon, String title, Function() action) {
      return Container(
        width: 110,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
          borderRadius: BorderRadiusDirectional.all(Radius.circular(5)),
        ),
        child: GestureDetector(
          onTap: action,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Icon(icon, color: const Color(0xFF000057)), Text(title)],
          ),
        ),
      );
    }

    return showModalBottomSheet(
        enableDrag: false,
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))
        ),
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (context, setStateBottomSheet) {
              String password = '';
              setAnimationState = setStateBottomSheet;
              return Container(
                padding: const EdgeInsets.only(top: 20),
                height: modalHeight,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              '选择校验方式',
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xff666666)),
                            ),
                            GestureDetector(
                              onTap: () {
                                modalHeight == 200
                                    ? Navigator.pop(context)
                                    : _controller.animateTo(200.0,
                                        duration:
                                            const Duration(milliseconds: 200));
                              },
                              child: modalHeight == 200
                                  ? const Icon(Icons.close)
                                  : const Icon(Icons.arrow_back),
                            )
                          ],
                        ),
                      ),
                      const Divider(height: 30),
                      modalHeight == 200
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  innerContainer(
                                      Icons.fingerprint_rounded, '指纹校验', () {
                                    // 校验指纹的方法略
                                  }),
                                  innerContainer(Icons.password, '密码校验', () {
                                    _controller.animateTo(600.0,
                                        duration:
                                            const Duration(milliseconds: 200));
                                    setAnimationState(() {
                                      checkType = 'passwordCheck';
                                    });
                                  }),
                                  innerContainer(Icons.timeline, '手势校验', () {
                                    print(checkType);

                                    _controller.animateTo(600.0,
                                        duration:
                                            const Duration(milliseconds: 200));
                                    setAnimationState(() {
                                      checkType = 'gestureCheck';
                                    });
                                  })
                                ])
                          : checkType == 'passwordCheck'
                              ? Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: TextFormField(
                                          //输入内容，隐藏
                                          obscureText: true,
                                          autofocus: true,
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 20,
                                                    vertical: 5),
                                            hintText: '请输入密码',
                                          ),
                                          onChanged: (v) {
                                            setAnimationState(() {
                                              password = v;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Container(
                                        width: 30,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: GestureDetector(
                                          onTap: () {
                                            if (password == '***用户的密码') {
                                              Navigator.pop(context);
                                              Navigator.pushNamed(
                                                  context, '***跳转的页面');
                                            }
                                          },
                                          child: Icon(Icons.done),
                                        ))
                                  ],
                                )
                              : Expanded(child: Text('手势解锁的组件 略')),
                    ]),
              );
            },
          );
        });
  }
}


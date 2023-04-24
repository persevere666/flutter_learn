//https://blog.csdn.net/ww897532167/article/details/125619399
//TextButton ElevatedButton IconButton OutlineButton
//https://blog.csdn.net/convex1009848621/article/details/127747920
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ButtonDemo extends StatefulWidget{
  const ButtonDemo({Key? key}):super(key:key);
  @override
  State<ButtonDemo> createState() => ButtonDemoState();
}

class ButtonDemoState extends State<ButtonDemo>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("These are Button"),),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (context){
                          return const Text("ElevatedButton");
                        }
                    );
                  },
                  child: const Text("ElevatedButton")
              ),
              TextButton(
                  onPressed: (){},
                  child: const Text("TextButton")
              ),
              OutlinedButton(
                  onPressed: (){},
                  child: const Text("OutlinedButton")
              ),
              IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.thumb_up)
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (context){
                          return const Text("ElevatedButton");
                        }
                    );
                  },
                  icon: const Icon(Icons.add),
                label: const Text("ElevatedButton"),
              ),
            ],
          ),
          const SizedBox(),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child:Container(
                    margin: const EdgeInsets.all(2),
                    height: 40,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.black
                        ),
                        foregroundColor: MaterialStateProperty.all(
                          Colors.white
                        )
                      ) ,
                      onPressed: (){},
                      child: const Text("ElevatedButton"),
                    ),
                  )
              )
            ],
          ),
          Row(
            children: [
               ElevatedButton(
                 style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    )
                 ),
                   onPressed: (){},
                   child: const Text("圆角 ")
               ),
              ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                          const CircleBorder(
                            side: BorderSide(color: Colors.yellow )
                          )
                      )
                  ),
                  onPressed: (){},
                  child: const Text("圆形")
              )
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             OutlinedButton(
               style: ButtonStyle(
                 side: MaterialStateProperty.all(
                  const BorderSide(width: 1, color: Colors.red)
                 ),
               ),
                 onPressed: (){},
                 child: const Text("带边框的按钮")
             )
          ],),
          CupertinoButton(
            padding: EdgeInsets.zero,
            child: Container(
              height: 40,
              width: 160,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: const Text(
                'CupertinoButton',
                style: TextStyle(color: Colors.red),
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }

}
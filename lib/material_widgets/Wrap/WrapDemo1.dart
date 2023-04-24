import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WrapDemo1 extends StatelessWidget{
  const WrapDemo1({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(10),
      child:Wrap(
        spacing: 5, //主轴上的间距，默认是x轴方向
        runSpacing: 10,//y轴伤的间距
        //direction: Axis.vertical, //
        alignment: WrapAlignment.spaceAround,
        children: [
          Button("第1集", onPressed: (){}),
          Button("第2集", onPressed: (){}),
          Button("第3集", onPressed: (){}),
          Button("第4集", onPressed: (){}),
          Button("第5集", onPressed: (){}),
          Button("第6集", onPressed: (){}),
          Button("第7集", onPressed: (){}),
          Button("第8集", onPressed: (){}),
          Button("第9集", onPressed: (){}),
          Button("第10集", onPressed: (){}),
          Button("第11集", onPressed: (){}),
          Button("第12集", onPressed: (){}),
        ],
      )
    );
  }
}


class Button extends StatefulWidget {
  final String text;
  final void Function()? onPressed;
  const Button(this.text, {Key? key, required this.onPressed}) :super(key: key);
  @override
  State<Button> createState() => _ButtonSate();
}
class _ButtonSate extends State<Button>{
  @override
  Widget build(BuildContext context){
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(100, 217, 205, 205)
          ),
          foregroundColor: MaterialStateProperty.all(
            const Color.fromARGB(100, 21, 20, 20)
          )
        ),
        onPressed: widget.onPressed,
        child: Text(widget.text)
    );

  }
}
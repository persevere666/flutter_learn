import "package:flutter/material.dart";
import "package:flutter_learn/widgets/Align/AlignDemo.dart";
import "package:flutter_learn/widgets/Animated/AnimatedWidgets.dart";
import "package:flutter_learn/widgets/Container/ContainerDemo1.dart";
import "package:flutter_learn/widgets/Expanded/ExpandedDemo.dart";
import "package:flutter_learn/widgets/GridView/GridViewDemo.dart";
import "package:flutter_learn/widgets/Hero/HeroHomePage.dart";
import "package:flutter_learn/widgets/Image/ImageDemo.dart";
import "package:flutter_learn/widgets/ListView/ListViewDemo.dart";
import "package:flutter_learn/widgets/Stack/StackDemo.dart";
import "package:flutter_learn/widgets/Text/TextDemo.dart";
import 'package:flutter_learn/widgets/Form/FormDemo1.dart';
class WidgetsWidgets extends StatelessWidget {
  const WidgetsWidgets({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("this is Widgets in Widgets"),
      ),
      body: ListView(
        children: [
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>  ContainerDemo1()
                    )
                );
              },
              child: const Text("ContainerDemo1")
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>  const TextDemo()
                    )
                );
              },
              child: const Text("TextDemo")
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const ImageDemo()
                    )
                );
              },
              child: const Text("ImageDemo")
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const AnimatedWidgets()
                    )
                );
              },
              child: const Text("AnimatedWidgets")
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const HeroHomePage()
                    )
                );
              },
              child: const Text("HeroHomePage")
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const ListViewDemo()
                    )
                );
              },
              child: const Text("ListViewDemo")
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const GridViewDemo()
                    )
                );
              },
              child: const Text("GridViewDemo")
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const ExpandedDemo()
                    )
                );
              },
              child: const Text("ExpandedDemo")
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const StackDemo()
                    )
                );
              },
              child: const Text("StackDemo")
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const AlignDemo()
                    )
                );
              },
              child: const Text("AlignDemo")
          ),

          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const FormDemo1()
                    )
                );
              },
              child: const Text("FormDemo1")
          ),
        ],
      ),
    );
  }
}
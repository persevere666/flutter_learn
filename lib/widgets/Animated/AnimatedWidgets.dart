import "package:flutter/material.dart";
import "package:flutter_learn/widgets/Animated/AnimatedContainer/AnimatedContainerDemo1.dart";
import "package:flutter_learn/widgets/Animated/AnimatedContainer/AnimatedContainerDemo2.dart";
import "package:flutter_learn/widgets/Animated/AnimatedDefaultTextStyle/AnimatedDefaultTextStyleDemo1.dart";
import "package:flutter_learn/widgets/Animated/AnimatedList/AnimatedListDemo1.dart";
import "package:flutter_learn/widgets/Animated/AnimatedOpacity/AnimatedOpacityDemo1.dart";
import "package:flutter_learn/widgets/Animated/AnimatedPadding/AnimatedPaddingDemo1.dart";
import "package:flutter_learn/widgets/Animated/AnimatedPositiond/AnimatedPositionedDemo1.dart";
import "package:flutter_learn/widgets/Animated/AnimatedSwitcher/AnimatedSwitcherDemo1.dart";

class AnimatedWidgets extends StatelessWidget {

  const AnimatedWidgets({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedWidgets"),
      ),
      body: ListView(
        children: [
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const AnimatedListDemo1()
                    )
                );
              },
              child: const Text("AnimatedListDemo1")
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const AnimatedContainerDemo1()
                    )
                );
              },
              child: const Text("AnimatedContainerDemo1")
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const AnimatedContainerDemo2()
                    )
                );
              },
              child: const Text("AnimatedContainerDemo2")
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const AnimatedPaddingDemo1()
                    )
                );
              },
              child: const Text("AnimatedPaddingDemo1")
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const AnimatedOpacityDemo1()
                    )
                );
              },
              child: const Text("AnimatedOpacityDemo1")
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const AnimatedPositionedDemo1()
                    )
                );
              },
              child: const Text("AnimatedPositionedDemo1")
          ),
          //AnimatedDefaultTextStyleDemo1
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const AnimatedDefaultTextStyleDemo1()
                    )
                );
              },
              child: const Text("AnimatedDefaultTextStyleDemo1")
          ),
          //
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const AnimatedSwitcherDemo1()
                    )
                );
              },
              child: const Text("AnimatedSwitcherDemo1")
          ),
        ],
      ),
    );
  }
}
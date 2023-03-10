import "package:flutter/material.dart";
import "package:flutter_learn/widgets/Animated/AnimatedWidgets.dart";

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
                        builder: (context) => const AnimatedWidgets()
                    )
                );
              },
              child: const Text("AnimatedWidgets")
          ),
        ],
      ),
    );
  }
}
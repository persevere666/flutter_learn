import "package:flutter/material.dart";
import "package:photo_view/photo_view.dart";
import 'package:photo_view/photo_view_gallery.dart';
import 'package:flutter_learn/widgets/Hero/ListData.dart';

class HeroPage extends StatefulWidget{
  final Map arguments;
  const HeroPage({Key? key, required this.arguments }):super(key:key);

  @override
  State<HeroPage> createState() => _HeroPageState();
}
class _HeroPageState extends State<HeroPage>{

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pop();
      },
      child: Hero(
        tag: widget.arguments["imageUrl"],
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child:PhotoViewGallery.builder(
                itemCount: listData.length,
                pageController: PageController(initialPage: 0),
                onPageChanged: (index){
                  //print(index)
                },
                builder:((context,index){
                  return PhotoViewGalleryPageOptions(
                      imageProvider: NetworkImage(listData[index]["imageUrl"]??"")
                  );
                })
            ),
          ),
        ),
      )
    );
  }
}
import 'package:flutter/material.dart';

class KeepAliveWrapper  extends StatefulWidget{
  final Widget? child;
  final bool keepAlive;

  const  KeepAliveWrapper({Key? key, required this.child, required this.keepAlive}): super(key: key);

  @override
  State<KeepAliveWrapper> createState() => _KeepAliveWrapperState();
}
class _KeepAliveWrapperState  extends State<KeepAliveWrapper> with AutomaticKeepAliveClientMixin {

  @override
  Widget build(BuildContext context) {
    if(widget.child==null){
      return Container();
    }else{
      return widget.child!;
    }
  }

  @override
  bool get wantKeepAlive => widget.keepAlive;

  @override
  void didUpdateWidget(covariant KeepAliveWrapper oldWidget){
    if(oldWidget.keepAlive != widget.keepAlive){
      updateKeepAlive();
    }
    super.didUpdateWidget(oldWidget);
  }
}
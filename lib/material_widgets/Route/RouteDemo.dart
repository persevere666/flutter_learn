
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///命名路由和命名路由传值
/**
 * 第一步：配置路由
 */
///
Map routes = {
  //命名路由
  "/": (context) => const Text(""),
  //命名路由穿参
  "/shop": (context,{argument}) => Text(argument??"")
};
/**
 * 第二步
 */
///
var onGenerateRoute = (RouteSettings settings){
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if(pageContentBuilder!=null){
    if(settings.arguments!=null){
      final Route route = MaterialPageRoute(
          builder:  (context) =>
              pageContentBuilder(context, arguments: settings.arguments)
      );
      return route;
    }else{
      final Route route = MaterialPageRoute(
          builder:  (context) => pageContentBuilder(context)
      );
      return route;
    }
  }
  return null;
};
/**
 * 第三步：设置Material
 * /将onGenerateRoute赋值给Material中的onGenerateRoute
 */

/**
 * 第四部：使用
 * Navigator.pushNamed(context, "/shop", arguments:{
 *  "xxx" : "xxx"
 *  "xxx" : "xxx"
 * }
 */

///替换路由
/**
 * 替换路由：替换当前路由
 * Navigator.of(context).pushReplacementNamed("/home")
 *
 */

/**
 * 返回到根路由
 * Navigator.of(context).pushAndRemoveUtil(
 *    MaterialPageRoute(builder:(BuildContext context){
 *       return XXXXPage()
 *    }),
 *    (route) => false
 *  )
 */
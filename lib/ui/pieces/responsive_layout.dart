import 'package:flutter/material.dart';
class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key, required this.tabWidget, required this.mobileWidget});
  final Widget tabWidget;
  final Widget mobileWidget;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
      if(constraints.maxWidth<=600){
        return mobileWidget;
      }else{
        return tabWidget;
      }
    }) ;
  }
}

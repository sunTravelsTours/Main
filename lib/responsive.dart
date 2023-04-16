import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({Key? key, required this.Mobilebody, required this.Desktopbody, required this.Tabletbody}) : super(key: key);

  final Widget Mobilebody;
  final Widget Tabletbody;
  final Widget Desktopbody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints) {
      if(constraints.maxWidth < 600) {
        return Mobilebody;
      }
      else if(constraints.maxWidth <1000) {
        return Tabletbody;
      }
      else{
        return Desktopbody;
      }
    });
  }
}

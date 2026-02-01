import 'package:december/responsive/mobile.dart';
import 'package:december/responsive/tablet.dart';
import 'package:december/responsive/web.dart';
import 'package:flutter/material.dart';

class LayoutResponsive extends StatefulWidget {
  const LayoutResponsive({super.key});

  @override
  State<LayoutResponsive> createState() => _LayoutResponsiveState();
}

class _LayoutResponsiveState extends State<LayoutResponsive> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,BoxConstraints constraints) {
        if(constraints.maxWidth < 400){
          return MobileScreen();
        }
        if(constraints.maxWidth < 900){
          return TabletScreen();
        } 
        else {
          return WebScreen();
        }

      },
    );
  }
}
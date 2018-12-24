import 'package:flutter/material.dart';

class LayoutsDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {

      return IconBadge(Icons.pool);
    }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon,{this.size = 32.0});
  
  @override
    Widget build(BuildContext context) {
      return Container(
        child:Icon(icon, size:size,color:Colors.white),
        width: this.size + 60,
        height: this.size + 60,
        color: Color.fromRGBO(3, 54, 255, 1.0),
      );
    }
}
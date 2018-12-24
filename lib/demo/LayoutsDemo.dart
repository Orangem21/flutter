import 'package:flutter/material.dart';

class LayoutsDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {

      return Container(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // IconBadge(Icons.pool,size:128.0),
            // IconBadge(Icons.pool,size:128.0),
            Stack(
              children: <Widget>[
              SizedBox(
              width: 200.0,
              height: 300.0,
              child:Container(
                alignment: Alignment(1.0, 0.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 54, 255, 1.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child:Icon(Icons.history,color:Colors.white,size:32.0),
              )
            ),
            SizedBox(
              height: 32.0,
            ),
           SizedBox(
              width: 100.0,
              height: 100.0,
              child:Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 54, 255, 1.0),
                  // borderRadius: BorderRadius.circular(8.0),
                  shape:  BoxShape.circle,
                  gradient: RadialGradient(colors:[
                    Color.fromRGBO(7, 102, 255, 1.0),
                    Color.fromRGBO(3, 54, 255, 1.0),
                  ] ),
                ),
                child:Icon(Icons.person,color:Colors.white,size:32.0),
              )
            )
              ],
            ),
          ],
        ),
      );
    }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon,{this.size = 32.0});//给他一个默认值
  
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
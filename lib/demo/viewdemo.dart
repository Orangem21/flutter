import 'package:flutter/material.dart';

class viewDemo extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return PageView(
          // pageSnapping: false,
          // reverse: true,
          // scrollDirection: Axis.vertical ,
          onPageChanged: (currentPage)=>
            debugPrint('Pages: $currentPage')
          ,
          children: <Widget>[
             Container(
              color: Colors.brown[900],
              alignment: Alignment.center,
              child: (
                Text(
                  'one',
                  style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.white,
                  ),
                )
              ),
             ),
             Container(
              color: Colors.blueGrey[900],
              alignment: Alignment.center,
              child: (
                Text(
                  'Two',
                  style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.white,
                  ),
                )
              ),
             ),
            Container(
              color: Colors.black,
              alignment: Alignment.center,
              child: (
                Text(
                  'Three',
                  style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.white,
                  ),
                )
              ),
             ),
          ],

      );
    }
}
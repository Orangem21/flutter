import 'package:flutter/material.dart';

class popup_menudemo extends StatefulWidget {
  _popup_menudemoState createState() => _popup_menudemoState();
}

class _popup_menudemoState extends State<popup_menudemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('popup_menudemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
              ],
            ),
          ],
        ),
      )
    );
  }
}
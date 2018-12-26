import 'package:flutter/material.dart';

class checkBoxDemo extends StatefulWidget {
  _checkBoxDemoState createState() => _checkBoxDemoState();
}

class _checkBoxDemoState extends State<checkBoxDemo> {

String _currentMenuItem  = 'Home';


  bool _checkBoxStatusA = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CHeckboxdemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              value: _checkBoxStatusA,
              onChanged: (value){
                setState(() {
                          _checkBoxStatusA = value;        
                                });
              },
              title: Text('Orange'),
              subtitle: Text('Never Give UP'),
              secondary: Icon(Icons.bookmark),
              selected : _checkBoxStatusA,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Text('Orange'),
                // Checkbox(
                //   value: _checkBoxStatusA,
                //   activeColor: Colors.black,
                //   onChanged: (value){
                //     setState(() {
                //       _checkBoxStatusA = value;
                //     });
                //   },
                // ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
import 'package:flutter/material.dart';

class checkBoxDemo extends StatefulWidget {
  _checkBoxDemoState createState() => _checkBoxDemoState();
}

class _checkBoxDemoState extends State<checkBoxDemo> {

String _currentMenuItem  = 'Home';

  int _radioGroupA = 0;

  bool _checkBoxStatusA = true;

  bool _switchItemA = false;

  void _handleValueChanged(int value){
    setState(() {
          _radioGroupA = value;
        });
  }

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
            // RadioListTile(

            //   activeColor: Colors.black,
            //   title: Text("Orange"),
            //   secondary: Icon(Icons.bookmark),
            //   subtitle:Text("Never"),
            //   value: 0,
            //   groupValue: _radioGroupA,
            //   selected: _radioGroupA == 0,
            //   onChanged: _handleValueChanged,
            // ),
            // RadioListTile(
            //   activeColor: Colors.black,
            //   secondary: Icon(Icons.bookmark),
            //   title: Text("Orange"),
            //   subtitle:Text("Give Up"),
            //   value: 1,
            //   selected: _radioGroupA == 1,
            //   groupValue: _radioGroupA,
            //   onChanged: _handleValueChanged,
            // ),
            // CheckboxListTile(
            //   value: _checkBoxStatusA,
            //   onChanged: (value){
            //     setState(() {
            //               _checkBoxStatusA = value;        
            //                     });
            //   },
            //   title: Text('Orange'),
            //   subtitle: Text('Never Give UP'),
            //   secondary: Icon(Icons.bookmark),
            //   selected : _checkBoxStatusA,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
                Text(_switchItemA?':Smile':':Cry',style: TextStyle(color: Colors.black,fontSize: 32.0),),
                Switch(
                  value: _switchItemA,
                  onChanged: (value){
                    setState(() {
                      _switchItemA = value;
                    });
                  },
                ),
                // Radio(
                //   value: 0,
                //   groupValue: _radioGroupA,
                //   onChanged: _handleValueChanged,
                //   activeColor: Colors.black,
                // ),
                // Radio(
                //   value: 1,
                //   groupValue: _radioGroupA,
                //   onChanged: _handleValueChanged,
                //   activeColor: Colors.black,
                // ),

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
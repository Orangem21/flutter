import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';


class checkBoxDemo extends StatefulWidget {
  _checkBoxDemoState createState() => _checkBoxDemoState();
}

class _checkBoxDemoState extends State<checkBoxDemo> {

String _currentMenuItem  = 'Home';

  int _radioGroupA = 0;

  bool _checkBoxStatusA = true;

  bool _switchItemA = false;

  double _sliderItemA = 0.0;

  DateTime selectDate = DateTime.now();

  void _handleValueChanged(int value){
    setState(() {
          _radioGroupA = value;
        });
  }

  _selectDate() async{
    final DateTime date = await showDatePicker(
      context: context,
      initialDate: selectDate,
      firstDate: DateTime(1990),
      lastDate: DateTime(2100),
    );
    if (date == null)return;

    setState(() {
          selectDate = date;
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
            
            InkWell(
              onTap: _selectDate,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(DateFormat.yMEd().format(selectDate)),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),



            // SwitchListTile(
            //   value: _switchItemA,
            //   onChanged: (value){
            //     setState(() {
            //              _switchItemA = value;         
            //     });
            //   },
            //   title: Text('Orange'),
            //   subtitle: Text('Orange Never Give up'),
            //   secondary: Icon(_switchItemA?Icons.visibility:Icons.visibility_off),
            //   selected: _switchItemA,
            // ),
            

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
                
                

                // Slider(
                //   value:_sliderItemA,

                //   onChanged: (value){
                //     setState(() {
                //              _sliderItemA  = value;             
                //           });
                //   },

                //   min: 0.0,
                //   max: 10.0,
                //   divisions: 10,
                //   label: '${_sliderItemA.toInt()}',

                //   activeColor: Theme.of(context).accentColor,
                //   inactiveColor:Theme.of(context).accentColor.withOpacity(0.1) ,
                // ),

                



                // Text(_switchItemA?':Smile':':Cry',style: TextStyle(color: Colors.black,fontSize: 32.0),),
                // Switch(
                //   value: _switchItemA,
                //   onChanged: (value){
                //     setState(() {
                //       _switchItemA = value;
                //     });
                //   },
                // ),
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
            // SizedBox(height: 8.0,),
            // Text('SliderValue:${_sliderItemA.toInt()}'),
          ],
        ),
      )
    );
  }
}
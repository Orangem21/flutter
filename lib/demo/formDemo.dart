import 'package:flutter/material.dart';

class formDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Theme(
          data: Theme.of(context).copyWith(
            primaryColor: Colors.black,
          ),
          child:Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFieldDemo(),
              ],
            ) ,
          ),
        ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).accentColor,
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        onChanged: (text) {
          // debugPrint(text);
        },
        onSubmitted: (vaule){
          debugPrint(vaule);
        },
        decoration: InputDecoration(
          icon:Icon(Icons.subject),
          labelText: 'Title',
          hintText: 'Enter the post title.',
          // border: OutlineInputBorder(),
          filled: true,
        ),

    );
  }
}
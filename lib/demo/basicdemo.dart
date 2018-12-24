import 'package:flutter/material.dart';

class BasicDemo  extends StatelessWidget {
  final TextStyle _TextStyle = TextStyle(
      fontSize: 16.0,
  );
  final String _title = '将进酒';
  final String _author = '李白'; 

  @override
  Widget build(BuildContext context) {
    return( RichText(
      text: TextSpan(
        text: 'orange',
        style: TextStyle(
          color: Colors.deepOrange,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: 'orange',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.black,
            )
          ),
        ]
      ),
    ) );
  }
}
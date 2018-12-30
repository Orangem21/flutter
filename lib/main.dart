import 'dart:async';
import 'number.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {

  //Android System Notification
  static const platform = const MethodChannel("com.flyou.test/android");
  showToast(String msg) async {
    try {
      await platform.invokeMethod("showToast",{"msg":msg});
    } on PlatformException catch (e) {
      print(e.toString());
    }
  //END
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture:CircleAvatar(
                backgroundImage: NetworkImage('https://i.v2ex.co/YXuImB2is.jpeg'),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('http://t2.hddhhn.com/uploads/tu/201612/98/st93.png'),
                ),
              ),
              accountName: Text('Orange'),
              accountEmail: Text('orangemtony@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle), title: Text('About'),
              onTap: (){
                showToast('Orange');
              },
            ),
            ListTile(
              leading: Icon(Icons.help), title: Text('Help'),
              onTap: (){
                showToast('Please Send Email to Developer');
              },
            ),

          ],
        ),

      ),
      appBar: AppBar(
        title: Text('Orange Calculator'),
        backgroundColor: Colors.orange.withOpacity(0.8),
        elevation: 2.0, //阴影
      ),
    );

  }
}

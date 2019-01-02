import 'dart:async';
import 'package:flutter_demo/body.dart';

import 'number.dart';

import 'package:flutter/cupertino.dart';
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

    return body();
  }
}


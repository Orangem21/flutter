import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class rxdartdemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("RxDartDemo"),
         elevation: 0.0,
       ),
       body: RxDartDemoHome(),
    );
  }
}

class RxDartDemoHome extends StatefulWidget {
  _RxDartDemoHomeState createState() => _RxDartDemoHomeState();
}

class _RxDartDemoHomeState extends State<RxDartDemoHome> {

  @override
    void initState() {

      super.initState();

      Observable<String> _observable = Observable(Stream.fromIterable(['Hello', '您好']));

      _observable.listen(print);

    }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
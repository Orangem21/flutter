import 'package:flutter/material.dart';

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
  Widget build(BuildContext context) {
    return Container();
  }
}
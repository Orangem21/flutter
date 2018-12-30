import 'package:flutter/material.dart';

class Statemanagement extends StatefulWidget {
  _StatemanagementState createState() => _StatemanagementState();
}

class _StatemanagementState extends State<Statemanagement> {
  int conut = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StateManagentDemo"),
        elevation: 0.0,
      ),
      body: Statebody(conut),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            conut += 1;
          });
          debugPrint('$conut');
        },
      ),
    );
  }
}

class Statebody extends StatelessWidget {

  final int conut;

  Statebody(this.conut);
  //构造函数

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:Chip(
          label: Text('$conut'),
        ),
      ),
    );
  }
}
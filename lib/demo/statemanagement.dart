import 'package:flutter/material.dart';

class Statemanagement extends StatefulWidget {
  _StatemanagementState createState() => _StatemanagementState();
}

class _StatemanagementState extends State<Statemanagement> {
  int conut = 0;
  void _inceaseCount(){
          setState(() {
            conut += 1;
          });
          debugPrint('$conut');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StateManagentDemo"),
        elevation: 0.0,
      ),
      body: CounterWrapper(conut,_inceaseCount),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _inceaseCount,
      ),
    );
  }
}

class Statebody extends StatelessWidget {

  final int conut;
  final VoidCallback inceaseCount;

  Statebody(this.conut,this.inceaseCount);
  //构造函数

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:ActionChip(
          onPressed: inceaseCount,
          label: Text('$conut'),
        ),
      ),
    );
  }
}

class CounterWrapper extends StatelessWidget {
    final int conut;
  final VoidCallback inceaseCount;

  CounterWrapper(this.conut,this.inceaseCount);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Statebody(conut,inceaseCount),
    );
  }
}
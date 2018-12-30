import 'package:flutter/material.dart';

class Statemanagement extends StatefulWidget {
  _StatemanagementState createState() => _StatemanagementState();
}

class _StatemanagementState extends State<Statemanagement> {
  int count = 0;
  void _inceaseCount(){
          setState(() {
            count += 1;
          });
          debugPrint('$count');
  }
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
        count: count,
        incereaseCount: _inceaseCount,
        child:Scaffold(
        appBar: AppBar(
          title: Text("StateManagentDemo"),
          elevation: 0.0,
        ),
        body: Statebody(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _inceaseCount,
        ),
      )
    );
  }
}

class Statebody extends StatelessWidget {
  
  //构造函数

  @override
  Widget build(BuildContext context) {
    final int count = CounterProvider.of(context).count;
    final VoidCallback inceaseCount = CounterProvider.of(context).incereaseCount;
    return Container(
      child: Center(
        child:ActionChip(
          onPressed: inceaseCount,
          label: Text('$count'),
        ),
      ),
    );
  }
}


class CounterProvider extends InheritedWidget {
  CounterProvider({
    this.count,
    this.incereaseCount,
    this.child,
  }):super(child:child);

  final Widget child;
  final int count;
  final VoidCallback incereaseCount;


  static CounterProvider of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(CounterProvider)as CounterProvider);
  }

  @override
  //是否通知重建
  bool updateShouldNotify( CounterProvider oldWidget) {
    return true;
  }


}
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class Statemanagement extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
        // count: count,
        // incereaseCount: _inceaseCount,
        model: CounterModel(),
        child:Scaffold(
        appBar: AppBar(
          title: Text("StateManagentDemo"),
          elevation: 0.0,
        ),
        body: Statebody(),
        floatingActionButton: ScopedModelDescendant<CounterModel>(
                  rebuildOnChange: false,
                  builder: (context, _, model)=> FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: model.increaseCount,
          ),
        ),
      )
    );
  }
}

class Statebody extends StatelessWidget {
  
  //构造函数

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CounterModel>(
          builder: (context, _, model)=>ActionChip(
            onPressed: model.increaseCount,
            label: Text('${model.count}'),
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

class CounterModel extends Model {
  
  int _count = 0;

  int get count => _count;

  void increaseCount(){
    _count += 1;
    notifyListeners();
  }


}
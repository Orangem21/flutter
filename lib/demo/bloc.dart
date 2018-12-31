import 'package:flutter/material.dart';
import 'package:flutter_demo/demo/CounterHome.dart';


class blocdemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
          bloc: CounterBloc(),
          child: Scaffold(
          appBar: AppBar(
            title: Text('Bloc'),
            elevation: 0.0,
          ),
          body: CounterHome(),
          floatingActionButton: CounterActionButton(),
      ),
    );
  }
}






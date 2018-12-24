import 'package:flutter/material.dart';
import 'demo/ListViewDemo.dart';

void main(){

  runApp(App());
}


class App extends StatelessWidget{
  @override //覆盖父类build方法
  Widget build(BuildContext context){
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primarySwatch:Colors.yellow, 
      ),
    );
  }
}


class Home extends StatelessWidget{

  @override
    Widget build(BuildContext context) {
       return Scaffold(
         backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu
            ),
            tooltip: 'Navigation',
            onPressed: ()=>
             debugPrint('Navgration button is pressed.')
            ,
          ),

          actions: <Widget>[

          IconButton(
            icon: Icon(
              Icons.search
            ),
            tooltip: 'Search',
            onPressed: ()=>
             debugPrint('search button is pressed.')
          )
          ],

          title: Text("Orange"),
          elevation: 0,
        ),
        body: null,
      );
    }
}

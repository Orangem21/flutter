import 'package:flutter/material.dart';
import 'demo/Drawer.dart';

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
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
    );
  }
}


class Home extends StatelessWidget{

  @override
    Widget build(BuildContext context) {
       return DefaultTabController(
         length: 3,
         child: Scaffold(
         backgroundColor: Colors.grey[100],
        appBar: AppBar( 


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
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.local_activity)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
          elevation: 0,
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.directions_run,color: Colors.red,size: 128.0),
            Icon(Icons.directions_walk,color: Colors.red,size: 128.0),
            Icon(Icons.directions_bike,color: Colors.red,size: 128.0),
          ],
        ),
        drawer:  Drawer() ,
        // endDrawer: Text('这也是'),
          ),
       );
    }
}

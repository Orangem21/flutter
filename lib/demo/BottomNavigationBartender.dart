import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

      return _BottomNavigationBarState();
    }
}

class _BottomNavigationBarState extends State<BottomNavigationBarDemo>{
  int _currentindex  = 0; 
  void _ontapHandler (int index){
    setState((){
      _currentindex = index;
    });
  }
  @override
    Widget build(BuildContext context) {
      
      return  BottomNavigationBar(
          currentIndex: _currentindex,
          onTap: _ontapHandler,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text("Explor"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text("History"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text("List"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("My"),
            )
          ],
        ); 
    }
}
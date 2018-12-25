import 'package:flutter/material.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body:ListView(
        children: <Widget>[
          ListofItem(title:'FloatingActionButton',page:FloatingActionButtonDemo(
            
          )),
        ],
      )
    );
  }
}
class FloatingActionButtonDemo extends StatelessWidget {
  final Widget _floatingActionButton = FloatingActionButton(
    onPressed: (){},
    child: Icon(Icons.add),
    elevation: 0.0,
    backgroundColor: Colors.black87,
    shape: BeveledRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  );

  final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: (){},
      icon: Icon(Icons.add),
      label: Text('add'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
      ),
      floatingActionButton: _floatingActionButtonExtended,
    );
  }
}


class ListofItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListofItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context){
              return page;
            }
          )
        );
      },
    );
  }
}
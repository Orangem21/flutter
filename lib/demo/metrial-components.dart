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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
      ),
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
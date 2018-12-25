import 'package:flutter/material.dart';
import '../model/post.dart';

class viewDemo extends StatelessWidget{
  List<Widget> _buildtiles(int length){
    return List.generate(length, (int index){
      return Container(
            color: Colors.grey[300],
            alignment: Alignment(0.0, 0.0),
            child: Text(
              'Item $index',
              style:TextStyle(fontSize: 18.0,color: Colors.grey)
            ),
          );
    });
  } 
  Widget _pageViewBuilder (BuildContext context,int index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit:BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold ),
              ),
              Text(
                posts[index].author,
              )
            ],
          ),

        )
      ],
    );
  }
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      // return PageView.builder(
      //   itemCount: posts.length,
      //   itemBuilder: _pageViewBuilder,
      // );

      return GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        children: _buildtiles(100),
      );
    }
}


class pageViewDemo extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return PageView(
          // pageSnapping: false,
          // reverse: true,
          // scrollDirection: Axis.vertical ,
          // onPageChanged: (currentPage)=>
          //   debugPrint('Pages: $currentPage')
          // ,
          controller: PageController(
            initialPage: 1,
            keepPage: false,
            viewportFraction: 0.85,
          ),
          children: <Widget>[
             Container(
              color: Colors.brown[900],
              alignment: Alignment.center,
              child: (
                Text(
                  'one',
                  style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.white,
                  ),
                )
              ),
             ),
             Container(
              color: Colors.blueGrey[900],
              alignment: Alignment.center,
              child: (
                Text(
                  'Two',
                  style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.white,
                  ),
                )
              ),
             ),
            Container(
              color: Colors.black,
              alignment: Alignment.center,
              child: (
                Text(
                  'Three',
                  style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.white,
                  ),
                )
              ),
             ),
          ],

      );
    }
}
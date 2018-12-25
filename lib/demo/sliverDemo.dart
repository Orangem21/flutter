import 'package:flutter/material.dart';
import '../model/post.dart';

class sliverDemo extends StatelessWidget{
   @override
     Widget build(BuildContext context) {
       // TODO: implement build
       return Scaffold(
         body: CustomScrollView(
           slivers: <Widget>[
             SliverSafeArea(
               sliver: SliverPadding(
               padding: EdgeInsets.all(8.0),
               sliver: SliverListDemo(),
             ),
             ),

           ],
         ),
       );
     }
}


class SliverGridDemo extends StatelessWidget{
    @override
      Widget build(BuildContext context) {
        // TODO: implement build
        return SliverGrid(
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                 crossAxisSpacing: 8.0,
                 mainAxisSpacing: 8.0,
                 childAspectRatio: 1,
               ),
               delegate: SliverChildBuilderDelegate(
                 (BuildContext context,int index){
                   return Container(
                     child: Image.network(
                       posts[index].imageUrl,
                       fit:BoxFit.cover,
                     ),
                   );
                 },
                 childCount: posts.length,
                 ),
             );
      }
}
class SliverListDemo extends StatelessWidget{
    @override
      Widget build(BuildContext context) {
        // TODO: implement build
        return SliverList(
              //  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //    crossAxisCount: 2,
              //    crossAxisSpacing: 8.0,
              //    mainAxisSpacing: 8.0,
              //    childAspectRatio: 1,
              //  ),
               delegate: SliverChildBuilderDelegate(
                 (BuildContext context,int index){
                   return Padding(
                     padding: EdgeInsets.only(bottom: 32.0),
                     child: Material(
                       borderRadius: BorderRadius.circular(12.0),
                       elevation: 14.0,
                       shadowColor: Colors.grey.withOpacity(0.5),

                       child: Stack(
                         children: <Widget>[
                           Positioned(
                             top: 32.0,
                             left: 32.0,
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(posts[index].title,style:TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                )),
                                Text(posts[index].author,style:TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.black,
                                ))
                              ],
                             ),
                           ),
                           AspectRatio(
                         aspectRatio: 16/9,
                          child: Image.network(
                          posts[index].imageUrl,
                          fit:BoxFit.cover,
                            ),
                          )
                         ],
                       ),
                     ),
                     
                   );
                 },
                 childCount: posts.length,
                 ),
             );
      }
}

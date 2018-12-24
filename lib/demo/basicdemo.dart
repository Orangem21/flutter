import 'package:flutter/material.dart';


class BasicDemo extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Container(
        // color:Colors.grey[100],
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://resources.ninghao.org/images/say-hello-to-barry.jpg'),
            alignment: Alignment.topCenter,
            repeat: ImageRepeat.noRepeat,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.indigoAccent[400].withOpacity(0.5),
               BlendMode.hardLight)
          )

        ),
        child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Icon(Icons.pool,size:32.0,color:Colors.white),
              // color: Color.fromRGBO(3, 54, 255, 1.0),
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(8.0),
              width: 90.0,
              height: 90.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                border: Border.all(
                    color: Colors.indigoAccent,
                    width: 3.0,
                    style: BorderStyle.solid,
                ),
                // borderRadius: BorderRadius.circular(64.0),
                // boxShadow: [
                //     BoxShadow(
                //       offset: Offset(6.0, 7.0),
                //       color: Color.fromRGBO(16, 20, 188, 1.0),
                //       blurRadius: 1.0,
                //     )
                // ],
                shape: BoxShape.rectangle,
                gradient: LinearGradient(
                  colors:[ Color.fromRGBO(7, 102, 255, 1.0),
                    Color.fromRGBO(3, 28, 128, 1.0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              ),
            ),
          ],
        ),

      );
    }
}


class BasicRichTextDemo  extends StatelessWidget {
  final TextStyle _TextStyle = TextStyle(
      fontSize: 16.0,
  );
  final String _title = '将进酒';
  final String _author = '李白'; 

  @override
  Widget build(BuildContext context) {
    return( RichText(
      text: TextSpan(
        text: 'orange',
        style: TextStyle(
          color: Colors.deepOrange,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: 'orange',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.black,
            )
          ),
        ]
      ),
    ) );
  }
}
import 'dart:async';
import 'number.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {

  //Android System Notification
  static const platform = const MethodChannel("com.flyou.test/android");
  showToast(String msg) async {
    try {
      await platform.invokeMethod("showToast",{"msg":msg});
    } on PlatformException catch (e) {
      print(e.toString());
    }
  //END
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture:CircleAvatar(
                backgroundImage: NetworkImage('https://i.v2ex.co/YXuImB2is.jpeg'),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('http://t2.hddhhn.com/uploads/tu/201612/98/st93.png'),
                ),
              ),
              accountName: Text('Orange'),
              accountEmail: Text('orangemtony@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle), title: Text('About'),
              onTap: (){
                showToast('Orange');
              },
            ),
            ListTile(
              leading: Icon(Icons.help), title: Text('Help'),
              onTap: (){
                showToast('Please Send Email to Developer');
              },
            ),

          ],
        ),

      ),
      appBar: AppBar(
        title: Text('Orange Calculator'),
        backgroundColor: Colors.orange.withOpacity(0.8),
        elevation: 2.0, //阴影
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.refresh),title: Text("Clear")),
          BottomNavigationBarItem(icon: Icon(Icons.near_me),title: Text("About")),
        ],
        type: BottomNavigationBarType.fixed,
        onTap: (int index){
          if(index == 0){
            Fluttertoast.showToast(
              msg: "Success Clear",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIos: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white
            );
          }else{
            showToast('Please Send Email to Developer');
            Fluttertoast.showToast(
              msg: "Please Send Email to Developer",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIos: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white
            );
          }
        },
      ),
      body: CupertinoPageScaffold(
          child: Container(
            color: Colors.orange[50],
             child: Column(
                children: <Widget>[
                Flexible(
                flex: 2,
                child: FractionallySizedBox(
                  widthFactor: 1.0,
                  heightFactor: 1.0,
                  alignment: Alignment.topCenter,
                  child: Container(
                    color: Colors.orange[200],
                    alignment: Alignment.bottomRight,
                    padding: const EdgeInsets.all(16.0),
                    child: Text("0",style: TextStyle(fontSize: 32.0,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ButtonBar(
                      children: <Widget>[
                        SizedBox(
                          child:FlatButton(
                            child: Text("➕",style: TextStyle(fontSize: 20),),
                            onPressed: (){},
                          ),
                        width: 60,
                        ),
                        SizedBox(
                          child:FlatButton(
                            child: Text("➖",style: TextStyle(fontSize: 20)),
                            onPressed: (){},
                          ),
                        width: 60,
                        ),
                        SizedBox(
                          child:FlatButton(
                            child: Text("✖️",style: TextStyle(fontSize: 20)),
                            onPressed: (){},
                          ),
                        width: 60,
                        ),
                        SizedBox(
                          child:FlatButton(
                            child: Text("➗",style: TextStyle(fontSize: 20)),
                            onPressed: (){},
                          ),
                        width: 60,
                        ),
                      ] ,
                    )
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: Text("1",style: TextStyle(fontSize: 20)),
                          onPressed: (){},
                        ),
                        FlatButton(
                          child: Text("2",style: TextStyle(fontSize: 20)),
                          onPressed: (){},
                        ),
                        FlatButton(
                          child: Text("3",style: TextStyle(fontSize: 20)),
                          onPressed: (){},
                        ),
                      ] ,
                    )
                  ],
                ),
              ),
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: Text("4",style: TextStyle(fontSize: 20)),
                          onPressed: (){},
                        ),
                        FlatButton(
                          child: Text("5",style: TextStyle(fontSize: 20)),
                          onPressed: (){},
                        ),
                        FlatButton(
                          child: Text("6",style: TextStyle(fontSize: 20)),
                          onPressed: (){},
                        ),
                      ] ,
                    )
                  ],
                ),
              ),
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: Text("7",style: TextStyle(fontSize: 20)),
                          onPressed: (){},
                        ),
                        FlatButton(
                          child: Text("8",style: TextStyle(fontSize: 20)),
                          onPressed: (){},
                        ),
                        FlatButton(
                          child: Text("9",style: TextStyle(fontSize: 20)),
                          onPressed: (){},
                        ),
                      ] ,
                    )
                  ],
                ),
              ),
              Flexible(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ButtonBar(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        SizedBox(
                          child:FlatButton(
                            child: Text("0",style: TextStyle(fontSize: 20)),
                            onPressed: (){},
                          ),
                        width: 60,
                        ),
                        SizedBox(
                          child:FlatButton(
                            child: Text(".",style: TextStyle(fontSize: 20)),
                            onPressed: (){},
                          ),
                        width: 60,
                        ),
                        SizedBox(
                          child:FlatButton(
                            child: Text("＝",style: TextStyle(fontSize: 20)),
                            onPressed: (){},
                          ),
                        width: 60,
                        ),
                      ] ,
                    )
                  ],
                ),
              )
            ]
          ),   
        ),
      ),
    );
  }
}


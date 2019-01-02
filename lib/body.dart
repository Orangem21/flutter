import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/cupertino.dart';

class body extends StatefulWidget {
  @override
  _bodyState createState() => _bodyState();
}



class _bodyState extends State<body> {

  String _currentdisplay = '0';
  String _defaultDisplay = '0';

  String _setValue(String index){

    if(_currentdisplay != '0'){
      index = _currentdisplay + index;
    }

    setState(() {
          _currentdisplay = index;
        });
  }

  String _clear(String index){
    setState(() {
          _currentdisplay = index;
        });
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
                //showToast('Orange');
              },
            ),
            ListTile(
              leading: Icon(Icons.help), title: Text('Help'),
              onTap: (){
                //showToast('Please Send Email to Developer');
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
            _clear(_defaultDisplay);
          }else{
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
                    child: Text(_currentdisplay,style: TextStyle(fontSize: 32.0,fontWeight: FontWeight.bold),),
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
                            onPressed: (){_setValue("➕");},
                          ),
                        width: 60,
                        ),
                        SizedBox(
                          child:FlatButton(
                            child: Text("➖",style: TextStyle(fontSize: 20)),
                            onPressed: (){_setValue("➖");},
                          ),
                        width: 60,
                        ),
                        SizedBox(
                          child:FlatButton(
                            child: Text("✖️",style: TextStyle(fontSize: 20)),
                            onPressed: (){_setValue("✖️");},
                          ),
                        width: 60,
                        ),
                        SizedBox(
                          child:FlatButton(
                            child: Text("➗",style: TextStyle(fontSize: 20)),
                            onPressed: (){_setValue("➗");}
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
                           onPressed: (){_setValue("1");}
                        ),
                        FlatButton(
                          child: Text("2",style: TextStyle(fontSize: 20)),
                           onPressed: (){_setValue("2");}
                        ),
                        FlatButton(
                          child: Text("3",style: TextStyle(fontSize: 20)),
                           onPressed: (){_setValue("3");}
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
                           onPressed: (){_setValue("4");}
                        ),
                        FlatButton(
                          child: Text("5",style: TextStyle(fontSize: 20)),
                           onPressed: (){_setValue("5");}
                        ),
                        FlatButton(
                          child: Text("6",style: TextStyle(fontSize: 20)),
                           onPressed: (){_setValue("6");}
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
                           onPressed: (){_setValue("7");}
                        ),
                        FlatButton(
                          child: Text("8",style: TextStyle(fontSize: 20)),
                           onPressed: (){_setValue("8");}
                        ),
                        FlatButton(
                          child: Text("9",style: TextStyle(fontSize: 20)),
                           onPressed: (){_setValue("9");}
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
                             onPressed: (){_setValue("0");}
                          ),
                        width: 60,
                        ),
                        SizedBox(
                          child:FlatButton(
                            child: Text(".",style: TextStyle(fontSize: 20)),
                             onPressed: (){_setValue(".");}
                          ),
                        width: 60,
                        ),
                        SizedBox(
                          child:FlatButton(
                            child: Icon(Icons.arrow_forward,textDirection: TextDirection.rtl,),
                            onPressed: (){_setValue(_defaultDisplay);},
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
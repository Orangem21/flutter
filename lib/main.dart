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
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName:Text('Orange',style: TextStyle(fontWeight:FontWeight.bold),), 
                accountEmail: Text('Orangemtony@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://resources.ninghao.org/images/wanghao.jpg')
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  image: DecorationImage(
                    image: NetworkImage('https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                    fit: BoxFit.cover,
                    // colorFilter: ColorFilter.mode(Colors.yellow[400].withOpacity(0.6), BlendMode.srcOver)
                  )
                ),
              ),
              ListTile(
                title: Text('Messages',textAlign:TextAlign.center),
                trailing: Icon(Icons.message,color:Colors.black12,size: 25.0,),
                onTap: ()=> Navigator.pop(context),
              ),
              ListTile(
                title: Text('Favorite',textAlign:TextAlign.center),
                trailing: Icon(Icons.favorite,color:Colors.black12,size: 25.0,),
                onTap: ()=> Navigator.pop(context),
              ),
              ListTile(
                title: Text('setting',textAlign:TextAlign.center),
                trailing: Icon(Icons.settings,color:Colors.black12,size: 25.0,),
                onTap: ()=> Navigator.pop(context),
              ),
            ],
          ),
        ),
        // endDrawer: Text('这也是'),
          ),
       );
    }
}

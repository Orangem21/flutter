import 'package:flutter/material.dart';
import 'dart:async';
class streamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
        elevation: 0.0,
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {



  StreamSubscription _streamSubscription;

  @override
    void initState() {
      
      super.initState();

      print("Create a steam");
      Stream<String> _streamDemo = Stream.fromFuture(
        fetchData()
      );

      void onData(String data){
        print('$data');
      }
      
      print("Start listening on stream");
      _streamSubscription = _streamDemo.listen(onData);

    }

  void _onPaused(){
    print('Pause Stream');
    _streamSubscription.pause();
  }
  void _onResumed(){
    print('Resume Stream');
    _streamSubscription.resume();
  }
    void _onCanceled(){
      print('Cancel Stream');
    _streamSubscription.cancel();
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 5));
    // throw "Something Happend";
    return 'Hello';
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text("Pause"),
                onPressed: _onPaused,
                ),
              FlatButton(
                child: Text("Resume"),
                onPressed: _onResumed,
                ),
              FlatButton(
                child: Text("Cancel"),
                onPressed: _onCanceled,
                ),
            ],
          ),
        ),
    );
  }
}

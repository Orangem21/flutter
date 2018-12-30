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

      void onError(error){
        print('Error: $error');
      }

      void onDone(){
        print("Done!");
      }
      
      print("Start listening on stream");
      _streamDemo.listen(onData,onError: onError,onDone: onDone);


    }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 3));
    return 'Hello';
  }
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}

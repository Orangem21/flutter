import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class rxdartdemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("RxDartDemo"),
         elevation: 0.0,
       ),
       body: RxDartDemoHome(),
    );
  }
}

class RxDartDemoHome extends StatefulWidget {
  _RxDartDemoHomeState createState() => _RxDartDemoHomeState();
}

class _RxDartDemoHomeState extends State<RxDartDemoHome> {
  PublishSubject<String> _textfieldSubject;


  @override
    void dispose() {
      _textfieldSubject.close();
      super.dispose();
    }
  @override
    void initState() {

      super.initState();

      _textfieldSubject = PublishSubject<String>();
      _textfieldSubject.listen((data)=>print(data));
      // Observable<String> _observable = 
      // Observable(Stream.fromIterable(['Hello', '您好']));
      // Observable.fromFuture(Future.value('Hello'));
      // Observable.just('Hello');
      // Observable.fromIterable(['Hello', '您好']);
      // Observable.periodic(Duration(seconds:3),(x)=>x.toString());
      // _observable.listen(print);


      // ReplaySubject<String> _subject = ReplaySubject<String>(maxSize: 1);

      // _subject.listen((data)=>print('listen 1: $data'));
      // _subject.add("hello");
      // _subject.listen((data)=>print('listen 2: ${data.toUpperCase()}'));
      // _subject.add("hola");
      // _subject.close();



    }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
            primaryColor: Colors.black,
        ),
        child: TextField(
          onChanged: (value){
            _textfieldSubject.add('input $value');
          },
          onSubmitted: (value){
            _textfieldSubject.add('submit $value');
          },
          decoration: InputDecoration(
            labelText: 'Title',
            filled: true,
          ),
        ),
    );
  }
}
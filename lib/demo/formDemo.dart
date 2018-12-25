import 'package:flutter/material.dart';

class formDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Theme(
          data: Theme.of(context).copyWith(
            primaryColor: Colors.black,
          ),
          child:Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RegisterForm(),
              ],
            ) ,
          ),
        ),
    );
  }
}
class RegisterForm extends StatefulWidget {
  RegisterFormState createState() => RegisterFormState();
}

class RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child:Column(
        children: <Widget>[
          TextFormField(
            decoration:InputDecoration(
              labelText: 'UserName',
            ) ,
          ),
          TextFormField(
            obscureText: true,
            decoration:InputDecoration(
              labelText: 'Password',
            ) ,
          ),
          SizedBox(height: 32.0,),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('Register',style:TextStyle(color:Colors.white)),
              onPressed: (){},
            ),
          ),
        ],
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).accentColor,
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {

  final textEditingController = TextEditingController();

  @override
  void dispose(){
    textEditingController.dispose();
  }

  @override
  void initState(){
    super.initState();
    // textEditingController.text = 'hi';
    textEditingController.addListener((){
      debugPrint(textEditingController.text);
    });
  }


  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: textEditingController,
        // onChanged: (text) {
        //   // debugPrint(text);
        // },
        onSubmitted: (vaule){
          debugPrint(vaule);
        },
        decoration: InputDecoration(
          icon:Icon(Icons.subject),
          labelText: 'Title',
          hintText: 'Enter the post title.',
          // border: OutlineInputBorder(),
          filled: true,
        ),

    );
  }
}



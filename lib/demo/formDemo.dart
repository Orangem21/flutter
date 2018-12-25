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

  final RegisterFormKey = GlobalKey<FormState>();

  bool autovalidate = false;

  String Username,Password;

 void subRegisterForm() {
    if(RegisterFormKey.currentState.validate()){
      RegisterFormKey.currentState.save();
      debugPrint('Username: $Username');
      debugPrint('Password: $Password');
    }else{
      setState(() {
        autovalidate = true;
      });
    }
  }
String  validatorUsername(value){
  if(value.isEmpty){
    return 'Username is Empty';
  }else{
    return null;
  }
}
String  validatorPassword(value){
  if(value.isEmpty){
    return 'Password is Empty';
  }else{
    return null;
  }
}
  @override
  Widget build(BuildContext context) {
    return Form(
      key: RegisterFormKey,
      child:Column(
        children: <Widget>[
          TextFormField(
            decoration:InputDecoration(
              labelText: 'UserName',
              // helperText: 'UserName',
            ) ,
            onSaved: (value){
              Username = value;
            },
            validator: validatorUsername ,
            autovalidate: autovalidate,
          ),
          TextFormField(
            obscureText: true,
            decoration:InputDecoration(
              labelText: 'Password',
              // helperText: 'PassWord',
            ) ,
            onSaved: (value){
              Password = value;
            },
            validator: validatorPassword ,
            autovalidate: autovalidate,
          ),
          SizedBox(height: 32.0,),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('Register',style:TextStyle(color:Colors.white)),
              onPressed: subRegisterForm,
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



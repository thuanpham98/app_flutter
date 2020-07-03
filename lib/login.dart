import 'package:asus_pro2/api.dart';
import 'package:asus_pro2/cuatom_widgets.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController= TextEditingController();
  String message ='';

  @override 
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(backgroundColor: Colors.transparent,elevation: 0.0,),
      body: Column(
        children: <Widget>[
         Expanded(
           child: ListView(
             children: <Widget>[
               Padding(
                 padding: EdgeInsets.fromLTRB(20,10,20,10),
                 child: Form(
                   key: _formKey,
                   child: Column(
                     children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(fontSize: 20) 
                        ),
                        controller: emailController,
                        validator: (value) {
                          if(value.isEmpty) {
                            return 'Email cannot be empty';
                          }
                          return null;
                        },  
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        obscureText:  true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(fontSize: 20) 
                        ),
                        controller: passwordController,
                        validator: (value) {
                          if(value.isEmpty) {
                            return 'password cannot be empty';
                          }
                          return null;
                        },  
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("New Guide?"),
                          SizedBox(height: 20),
                          FlatButton(
                            onPressed: () {},
                            child: Text('Sign up',style: TextStyle(fontSize: 18,color: Theme.of(context).primaryColor),
                            )
                          ),
                        ],
                      ),
                      CustomButton(onbtnPressed: () async {
                        if(_formKey.currentState.validate()) {
                          var email = emailController.text;
                          var password = passwordController.text;
                          setState(() {
                            message="please wait...";
                          });
                          var res=await loginUser(email, password);
                          print(res);
                        }
                      },
                      btntext: "Sign in",),
                     ],
                   ),
                  ),
               ),
             ],
           )),
        ],
      ),
    );
  }
}
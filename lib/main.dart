import 'package:flutter/material.dart';
import 'custom_web_plug.dart';
void main() => runApp(my_app());

class my_app extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Web View",
      theme:  ThemeData(
        primarySwatch: Colors.green,
      ),
      home: myHomePage() ,
    ) ;
  }
}

class myHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("IoT App View"),centerTitle: true,),
      body: Center(
          child:  Column(
            children: <Widget>[
              Container(
                height: 400,
                width: 300,
                child: Image.asset('assets/user.png'),
              ),
              RaisedButton(child: Text("Go Man"),onPressed: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=> myCustomWebView(url: "https://iot-server-365.herokuapp.com/user", title: "IoT App View" )));
              },color:  Colors.green,textColor: Colors.white,),
            ],
          ),
      ) 
    );
  }
}
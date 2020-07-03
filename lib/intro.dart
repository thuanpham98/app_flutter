import 'package:asus_pro2/cuatom_widgets.dart';
import 'package:asus_pro2/login.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top : 0,
            left: 70,
            child: HeroImage(
              imaheight: MediaQuery.of(context).size.height*1,
            ),
          ),
          Positioned(
            bottom: 5,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.3,
              padding: EdgeInsets.fromLTRB(20,10,20,10),
              child: Column(
                children: <Widget>[
                  Text('orther fresh online',style: Theme.of(context).textTheme.headline5,),
                  SizedBox(height: 20, width: 20,),
                  CustomButton(btntext: 'getting Start',onbtnPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return Login();
                      }) 
                    );
                  },),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
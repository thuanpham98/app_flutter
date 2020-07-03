import 'package:flutter/material.dart';

class HeroImage extends StatelessWidget {
  final double imaheight;
  HeroImage({this.imaheight});
  @override 
  Widget build(BuildContext context){
    return Container(
        child: Image.asset('assets/bee.jpg'),
        width: MediaQuery.of(context).size.width/2,
        height: MediaQuery.of(context).size.height/2,
    );
  }
}

class CustomButton extends StatelessWidget {
  final String btntext;
  final Function onbtnPressed;

  CustomButton({this.btntext,this.onbtnPressed});
  @override 
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(btntext,
          style: Theme.of(context).textTheme.bodyText1,),
          SizedBox(width : 10),
          Icon(Icons.arrow_forward),
        ],
      ),
      onPressed: onbtnPressed,
      color: Theme.of(context).primaryColor,
    );
  }
}

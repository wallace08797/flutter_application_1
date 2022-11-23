import 'dart:math';

import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
void main() {
 runApp(new flutterapp());
  //this is to infate the widget to the main screen. whatever we we pass in it would be 
  //displayed in our users Screen.

 
}


class flutterapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   //here we are just returning our materialapp widget from the build method.
      return  MaterialApp(
    home: Scaffold(
      //home is an property that takes widget to be displayed on the route of the app.
      appBar: AppBar(title: Text("volleyball days",
      style: TextStyle(color: Colors.black,fontSize: 15.0,fontStyle: FontStyle.italic),
      //this TextStyle widget is used to provide styleling to the Text widget.
      ),backgroundColor: Colors.amberAccent,),body: Material(
        //this material widget we are using to provide the color to our application.
        color: Colors.cyanAccent,
        child: Center(
          child: Text("your Lucky number is ${generatelucknumber()}",
          style: TextStyle(color: Colors.black,fontSize: 25.0,fontStyle: FontStyle.italic),
          ),
        )// the center widget is basically to place any other UI element in the center of the screen
      ),
    ),//basically Scaffold widget is used to display an app bar on the screen
  );

    throw UnimplementedError();
  }


  int generatelucknumber(){

   var random=Random();
   var lucknumber=random.nextInt(100);
   return lucknumber;

  }

}

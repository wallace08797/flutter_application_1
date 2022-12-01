import 'dart:math';

import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
void main() {
 runApp(new Flightapp());
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


class container extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

     return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Stand by me",style: TextStyle(color: Colors.black,fontStyle: FontStyle.italic),),backgroundColor: Colors.amberAccent,),
        body: Material(
          child: Center(
            child: Container(
              alignment: Alignment.center,
              color: Colors.black,
              width: 400.0,
              height: 250.0,
              margin: EdgeInsets.only(left:30.0,right: 30.0),
              
            child: Row(

              children: [

               Expanded(child: 
               Text("Would you stand by me ",textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.white,fontSize: 23.0,fontStyle: FontStyle.italic),
                )
               ) ,

                Expanded(child: 
                 Text("we have a long way to go",textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.green,fontSize: 23.0,fontStyle: FontStyle.italic),
                )
                ),

                Expanded(child: 
                
                 Text("Dont give up",textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.white,fontSize: 23.0,fontStyle: FontStyle.italic),
                ),
                )
              ],
            ),
            )
          ),
        ),
      ) 
     );
     
      //Expanded widget basically forces the children to acquire the available space
      
      
        throw UnimplementedError();
  }
}


// Lets Desgin an UI for an app showing information about the flights.
//core logic a container have a column widget followed by the row widget.


class Flightapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: Text("Flight Information",style:
      TextStyle(color: Colors.black,fontSize: 17.0,fontStyle: FontStyle.italic)
      ,),backgroundColor: Colors.amberAccent,),
      body: Material(
        color: Colors.white,
        child: Container(
          margin:EdgeInsets.all(10.0),
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 10.0,),
              
              Row(
                children: [

                 Expanded(child: 
                  Text("1.KLM Airlines",style: 
                  TextStyle(color: Colors.black,fontSize: 20.0,fontStyle: FontStyle.italic),),
                 ),
                 
                 Expanded(
                  child: Text("Flight from amsterdam to Panama",style: 
                  TextStyle(color: Colors.black,fontSize: 17.0,fontStyle: FontStyle.italic)
                  ,),
                 ) 
                 
                ],
              ),

             SizedBox(height: 20.0,),
             //we used this widget in order to provide space between two Text elements in the row.
               Row(
                children: [

                 Expanded(child: 
                  Text("2.Emirates",style: 
                  TextStyle(color: Colors.black,fontSize: 20.0,fontStyle: FontStyle.italic),),
                 ),

                 Expanded(
                  child: Text("Flight from Dubai to Manchester city",style: 
                  TextStyle(color: Colors.black,fontSize: 17.0,fontStyle: FontStyle.italic)
                  ),
                 ) 
                 
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                children: [

                 Expanded(child: 
                  Text("3.Air India",style: 
                  TextStyle(color: Colors.black,fontSize: 20.0,fontStyle: FontStyle.italic),),
                 ),

                 Expanded(
                  child: Text("Flight from Mumbai to Dallas Texas",style: 
                  TextStyle(color: Colors.black,fontSize: 17.0,fontStyle: FontStyle.italic)
                  ),
                 ) 
                 
                ],
              ),

              SizedBox(height: 20.0,),
              Row(
                children: [

                 Expanded(child: 
                  Text("4.Vistara",style: 
                  TextStyle(color: Colors.black,fontSize: 20.0,fontStyle: FontStyle.italic),),
                 ),

                 Expanded(
                  child: Text("Flight from Egypt to India",style: 
                  TextStyle(color: Colors.black,fontSize: 17.0,fontStyle: FontStyle.italic)
                  ),
                 ) 
                 
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                children: [

                 Expanded(child: 
                  Text("5.Air Canada",style: 
                  TextStyle(color: Colors.black,fontSize: 20.0,fontStyle: FontStyle.italic),),
                 ),

                 Expanded(
                  child: Text("Flight from India to Toronto",style: 
                  TextStyle(color: Colors.black,fontSize: 17.0,fontStyle: FontStyle.italic)
                  ),
                 ) 
                 
                ],
              ),
             SizedBox(height:50.0 ,),
             getimage(),  
             raisebutton()
            ],
          ),
        ),
      ),
    ),
    );
        throw UnimplementedError();
  }

}

class getimage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
  AssetImage assetImage=AssetImage('images/i.jpg');
  Image image=Image(image: assetImage);
  return Container(child: image,);
        throw UnimplementedError();
  }
}


class raisebutton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: EdgeInsets.only(top: 50.0),
    child: ElevatedButton(onPressed:(){
     showDialog(context: context,barrierDismissible: false, builder:((context) => AlertDialog(
      title: Text("Thankyou for choosing our Flight",style: TextStyle(color: Colors.amberAccent,fontStyle: FontStyle.italic),),
      content: Text("Have a Pleasant Flight",style: TextStyle(color: Colors.amberAccent,fontStyle: FontStyle.italic),),
      backgroundColor: Colors.black,
      
    
      actions:<Widget>[
        TextButton(onPressed:(){
           Navigator.of(context).pop();
        }, child: Text("Okay"))
      ],
     )));
    },
    child: Text("Click to Confirm Booking",style: TextStyle(color: Colors.black),),
    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.deepOrange)),
    )  
    );
    
  }
}


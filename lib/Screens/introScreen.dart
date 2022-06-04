import 'package:flutter/material.dart';
import 'package:mankeyapp/Widget/Button.dart';
import 'LoginScreen.dart';
class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
            children: [
         Container(decoration: BoxDecoration(image: DecorationImage(
        image: NetworkImage("https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/virtual/splashIcon.png"),fit: BoxFit.fill)),),
              Column(
                children: [
                  Expanded(
                    child: Container(decoration: BoxDecoration(image: DecorationImage(
                        image: NetworkImage("https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/virtual/MealMonkeyLogo.png"))),),
                  ),
                  Text(
                    "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30,),
                  // Button(color: Colors.deepOrange, text: "Login",
                  //   onTaped:(){Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()));}
                  //   ,),
                  RaisedButton(onPressed:(){
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
                  } ,
                      color: Colors.deepOrange,textColor: Colors.white,
                      child: Container(height: 40,width: 270,
                        child: Text("Login",textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),
                      shape: RoundedRectangleBorder(borderRadius:
                      BorderRadius. circular(15.0),
                      )

                  ),
                  SizedBox(height: 30,),
                  RaisedButton(onPressed: (){},
                    color: Colors.white,textColor: Colors.deepOrange,
                    child: Container(
                        child: Text("Create an Account",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25,),),
                        height: 40,width: 270,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25))),
                    shape: RoundedRectangleBorder(borderRadius:
                    BorderRadius. circular(15.0),side: BorderSide(color: Colors.deepOrange),
                    ),

                  ),
                  SizedBox(height: 60,),
                ],
              ),
            ],
          ),



    );
  }
}

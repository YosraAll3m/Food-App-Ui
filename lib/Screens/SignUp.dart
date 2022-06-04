import 'package:flutter/material.dart';
import 'Onboarding.dart';
class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(decoration: BoxDecoration(image: DecorationImage(
              image: NetworkImage("https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/virtual/splashIcon.png"),fit: BoxFit.fill)),),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           SizedBox(height: 50,),

           Text(" Sign Up ",style:
               TextStyle(fontWeight: FontWeight.w500,fontSize: 30,color:Colors.deepOrange) ),
           SizedBox(height: 50,),

           TextFormField(cursorColor:Colors.deepOrange ,decoration: InputDecoration(fillColor: Colors.white60,
                 filled: true,labelText: "User Name",
                 labelStyle: TextStyle(color:Colors.deepOrange,
                     fontWeight: FontWeight.bold,fontSize: 17),
                 prefixIcon: Icon(Icons.perm_identity,color:Colors.deepOrange,),
                 focusColor: Colors.deepOrange,
                 errorBorder: OutlineInputBorder(borderSide: BorderSide(
                     color:Colors.deepOrange)),
                 hoverColor:Colors.deepOrange ,
                 focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(
                     color:Colors.deepOrange)),
                 enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)
                     ,borderSide: BorderSide(color:Colors.deepOrange)), ),),
                SizedBox(height: 30,),
           TextFormField(cursorColor:Colors.deepOrange ,decoration: InputDecoration(labelText: "Email",
               fillColor: Colors.white60,
               filled: true,
               labelStyle: TextStyle(color:Colors.deepOrange,
                   fontWeight: FontWeight.bold,fontSize: 17),
               prefixIcon: Icon(Icons.email_rounded,color:Colors.deepOrange,),
               focusColor: Colors.deepOrange,
               errorBorder: OutlineInputBorder(borderSide: BorderSide(
                   color:Colors.deepOrange)),
               hoverColor:Colors.deepOrange ,
               focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(
                   color:Colors.deepOrange)),
               enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)
                   ,borderSide: BorderSide(color:Colors.deepOrange)), ),),
           SizedBox(height: 30,),

                 TextFormField(cursorColor:Colors.deepOrange ,decoration: InputDecoration(labelText: "Password",
                   fillColor: Colors.white60,
                 filled: true,
                 labelStyle: TextStyle(color:Colors.deepOrange,
                     fontWeight: FontWeight.bold,fontSize: 17),
                 prefixIcon: Icon(Icons.lock,color:Colors.deepOrange,),
                 focusColor: Colors.deepOrange,
                 errorBorder: OutlineInputBorder(borderSide: BorderSide(
                     color:Colors.deepOrange)),
                 hoverColor:Colors.deepOrange ,
                 focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(
                     color:Colors.deepOrange)),
                 enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)
                     ,borderSide: BorderSide(color:Colors.deepOrange)), ),),
                 SizedBox(height: 30,),

                 TextFormField(cursorColor:Colors.deepOrange ,decoration: InputDecoration(labelText: " Confirm Password",
                   fillColor: Colors.white60,
                   filled: true,
                 labelStyle: TextStyle(color:Colors.deepOrange,
                     fontWeight: FontWeight.bold,fontSize: 17),
                 prefixIcon: Icon(Icons.lock,color:Colors.deepOrange,),
                 focusColor: Colors.deepOrange,
                 errorBorder: OutlineInputBorder(borderSide: BorderSide(
                     color:Colors.deepOrange)),
                 hoverColor:Colors.deepOrange ,
                 focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(
                     color:Colors.deepOrange)),
                 enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)
                     ,borderSide: BorderSide(color:Colors.deepOrange)), ),),

                SizedBox(height: 50,),

                 Center(
               child: InkWell(onTap: (){
                 Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Onboarding()));
               },
                 child: Container( height: 50,width: 300,decoration: BoxDecoration(
                     color: Colors.deepOrange,borderRadius: BorderRadius.circular(25)
                 ),child:  Center(
                   child: Text("Sign Up", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),

                   ),
                 ),),),
           ),


         ],
       ),
            ),
          ),
        ],
      ),

    );
  }
  void onboarding(){

  }
}

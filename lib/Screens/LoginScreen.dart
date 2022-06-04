import 'SignUp.dart';
import 'package:flutter/material.dart';
import 'ForgetPassword.dart';
class LoginScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.deepOrange,
      resizeToAvoidBottomInset: false,
       body: Stack(
            children: [
              Container(decoration: BoxDecoration(image: DecorationImage(
                  image: NetworkImage("https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/virtual/splashIcon.png"),fit: BoxFit.fill)),),
            Center(
              child: Container(height: 500,width:330,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text(" LOGIN ",style:
                      TextStyle(fontWeight: FontWeight.w500,fontSize: 30,color:Colors.black) ),
                      SizedBox(height: 30,),
                      TextFormField(cursorColor:Colors.deepOrange ,decoration: InputDecoration(labelText: "User Name",
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
                      SizedBox(height: 20,),
                      TextFormField(obscureText: true,cursorColor:Colors.deepOrange ,
                          decoration: InputDecoration(labelText: "Password",
                            labelStyle: TextStyle(color:Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 17),
                            prefixIcon: Icon(Icons.lock_outline,color:Colors.deepOrange,),
                            suffixIcon:Icon(Icons.visibility,color:Colors.deepOrange,) ,
                            focusColor:Colors.white,focusedBorder:OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)
                                ,borderSide: BorderSide(color:Colors.deepOrange)),
                          )),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Checkbox(activeColor:Colors.deepOrange ,onChanged: (value){
                          },value:true),
                          Text("Remember me",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                          SizedBox(width: 16,),

                          InkWell(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
                          },
                            child: Text("Forget Password?",style: TextStyle(
                                color: Colors.deepOrange,fontSize: 13,
                                fontWeight: FontWeight.bold),),)
                        ],
                      ),
                      SizedBox(height: 50,),
                      Center(
                        child: InkWell(onTap: (){},
                          child: Container( height: 50,width: 300,decoration: BoxDecoration(
                              color: Colors.deepOrange,borderRadius: BorderRadius.circular(25)
                          ),child:  Center(
                            child: Text("LOGIN", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),

                            ),
                          ),),),
                      ),

                      SizedBox(height: 50,),                      Center(
                        child: Row(
                          children: [
                            Text("Don't have an account?",style: TextStyle(color: Colors.black,fontSize: 20,
                                fontWeight: FontWeight.w500),),
                            SizedBox(width: 3,),
                            InkWell(onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                            },
                              child: Text("Sign Up",style: TextStyle(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.bold),),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
            ],
          ),


    );
  }


}
import 'package:flutter/material.dart';

import 'NewPassword.dart';
class confirmPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Verify Your Email",
        style: TextStyle(color: Colors.black, fontSize: 23),),
        backgroundColor: Colors.white,
elevation: 0,
        leading: Icon(Icons.arrow_back,color: Colors.black),

      ),
      backgroundColor: Colors.white,


      body:
      Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(height:200,width:250,decoration: BoxDecoration(image: DecorationImage(
                  image: NetworkImage("https://i.pinimg.com/564x/8d/da/2c/8dda2c99419327fd020dea46323008df.jpg"))),),
            ),
            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text("The 4 Digit Code Sent To eng.yosra.allam@gmail.com",style: TextStyle(color: Colors.black,
                  fontSize: 20,fontWeight: FontWeight.w500),),
            ),
            SizedBox(height: 50,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(onTap: (){},child: Container(
                  child: TextFormField(textAlign: TextAlign.center,),
                  height: 50,width: 50,decoration: BoxDecoration(color: Color(0xffF9DDC1),borderRadius: BorderRadius.circular(10)),
                ),)     ,
                SizedBox(width: 10,),
                InkWell(onTap: (){},child: Container(
                  child: TextFormField(textAlign: TextAlign.center,),
                  height: 50,width: 50,decoration: BoxDecoration(color: Color(0xffF9DDC1),borderRadius: BorderRadius.circular(10)),
                ),),
                SizedBox(width: 10,),
                InkWell(onTap: (){},child: Container(
                  child: TextFormField(textAlign: TextAlign.center,),
                  height: 50,width: 50,decoration: BoxDecoration(color: Color(0xffF9DDC1),borderRadius: BorderRadius.circular(10)),
                ),)  ,
                SizedBox(width: 10,),
                InkWell(onTap: (){},child: Container(
                  child: TextFormField(textAlign: TextAlign.center,),
                  height: 50,width: 50,decoration: BoxDecoration(color: Color(0xffF9DDC1),borderRadius: BorderRadius.circular(10)),
                ),)              ],


            ),
            SizedBox(height: 70,),

            Center(
              child: InkWell(onTap: (){
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>NewPassword ()));
              },
                child: Container( height: 50,width: 400,decoration: BoxDecoration(
                    color: Colors.deepOrange,borderRadius: BorderRadius.circular(25)
                ),child:
                Center(
                  child: Text("Verify", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),

                  ),
                ),),),
            ),

          ],
        ),
      ),
    );
  }
}

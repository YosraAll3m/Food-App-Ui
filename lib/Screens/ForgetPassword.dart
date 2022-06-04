import 'package:flutter/material.dart';

import 'confirmPassword.dart';
class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      centerTitle: true,backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text("Forget Password",style: TextStyle(color: Colors.black,
                  fontSize: 25,fontWeight: FontWeight.w500),),
              SizedBox(height: 20,),
              Text(" Enter your email to recieve a link to create a new password via email",
                style: TextStyle(color: Colors.black26,fontSize: 20),),




              Container(height: 100,width: 50,decoration: BoxDecoration(image: DecorationImage(
                            image:NetworkImage("  https://i.pinimg.com/564x/ac/06/fb/ac06fbfb97403472c0e04ed77084810f.jpg"), fit: BoxFit.fill)),),



              SizedBox(height: 40,),

              Text("Email",style: TextStyle(color: Colors.black26,fontSize: 25),),
              SizedBox(height: 10,),
              TextFormField(cursorColor:Colors.grey ,decoration: InputDecoration(
                fillColor: Colors.grey.withOpacity(0.2),
                filled: true,
                errorBorder: OutlineInputBorder(borderSide: BorderSide(
                    color:Colors.grey)),
                hoverColor:Colors.grey ,
                focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(
                    color:Colors.grey)),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)
                    ,borderSide: BorderSide(color:Colors.grey)), ),),
              SizedBox(height: 40,),

              Center(
                child: InkWell(onTap: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>confirmPassword ()));
                },
                  child: Container( height: 50,width: 400,decoration: BoxDecoration(
                      color: Colors.deepOrange,borderRadius: BorderRadius.circular(25)
                  ),child:  Center(
                    child: Text("Send", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),

                    ),
                  ),),),
              ),



            ],

          ),
        ),
      ),

    );
  }
}

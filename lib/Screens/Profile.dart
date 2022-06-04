import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
import 'Menu.dart';
import 'More.dart';
import 'offers.dart';
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      title: Text("Profile",
        style: TextStyle(color: Colors.black),),
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [Image(image:
      NetworkImage("https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/virtual/cart.png"))],
    ),

      bottomNavigationBar:CurvedNavigationBar(height: 60,
        backgroundColor:Colors.deepOrange,
        items: [

          InkWell(onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Profile()));

          },
            child: Column(
              children: [
                Icon(Icons.person),
                SizedBox(height: 5,),
                Text("Profile",style: TextStyle(color: Colors.black,
                    fontSize: 15,fontWeight: FontWeight.w500),),

              ],
            ),
          ),
          InkWell(onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>offers()));

          },
            child: Column(
              children: [
                Image(image: NetworkImage("https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/virtual/bag.png")),
                SizedBox(height: 5,),

                Text("Offers",style: TextStyle(color: Colors.black,
                    fontSize: 15,fontWeight: FontWeight.w500),),
                InkWell(onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>More()));

                },
                  child: Column(
                    children: [
                      Icon(Icons.read_more,color: Colors.deepOrange,),
                      SizedBox(height: 5,),

                      Text("More",style: TextStyle(color: Colors.black,
                          fontSize: 15,fontWeight: FontWeight.w500),),

                    ],
                  ),
                ),
                InkWell(onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>More()));

                },
                  child: Column(
                    children: [
                      Icon(Icons.read_more,color: Colors.black,),
                      SizedBox(height: 5,),

                      Text("More",style: TextStyle(color: Colors.black,
                          fontSize: 15,fontWeight: FontWeight.w500),),

                    ],
                  ),
                ),


              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Home ()));

            }
            ,child:Column(
            children: [
              Icon(Icons.home_rounded),
              SizedBox(height: 5,),

              Text("Home",style: TextStyle(color: Colors.black,
                  fontSize: 15,fontWeight: FontWeight.w500),),

            ],
          ),),
          InkWell(onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Menu()));

          },
            child: Column(
              children: [
                Icon(Icons.widgets_outlined),
                SizedBox(height: 5,),

                Text("Menu",style: TextStyle(color: Colors.black,
                    fontSize: 15,fontWeight: FontWeight.w500),),

              ],
            ),
          ),


        ],) ,
      body:Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

                CircleAvatar(radius: 50 ,backgroundImage: NetworkImage("https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/user.jpg"),

          ),



              SizedBox(height: 10,),

        Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                    Image(image: NetworkImage("https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/virtual/edit_filled.png"),),
                    Text("  Edit Profile",style: TextStyle(color: Colors.deepOrange,fontSize: 17),)
                  ],
              ),

              SizedBox(height: 10,),

              Text("Yosra Allam",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),

              feild(name: "Email"),
              SizedBox(height: 10,),
              feild(name: "Password"),
              SizedBox(height: 10,),
              feild(name: "Confirm Password"),
              SizedBox(height: 10,),
              feild(name: "Phone"),
              SizedBox(height: 10,),
              InkWell(onTap: (){},
                child: Container( height: 50,width: 355,decoration: BoxDecoration(
                    color: Colors.deepOrange,borderRadius: BorderRadius.circular(23)
                ),child:  Center(
                  child: Text("Save", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),

                  ),
                ),),),


            ]),

      ),

    );
  }
}class feild extends StatelessWidget{
final String name;
feild({
  required this.name,
});
  @override
  Widget build(BuildContext context) {
    return
        Column(children: [
          TextFormField(cursorColor:Colors.deepOrange ,decoration: InputDecoration( fillColor: Colors.grey.withOpacity(0.1),
            filled: true,labelText: "$name",
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
                ,borderSide: BorderSide(color:Colors.grey)), ),),
        ],);
  }


}

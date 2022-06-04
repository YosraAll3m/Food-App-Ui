import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
import 'Menu.dart';
import 'Profile.dart';
import 'offers.dart';
class Dessert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(leading: Icon(Icons.arrow_back_ios,color: Colors.black),
        title: Text("Dessert",
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
          InkWell(onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>offers()));

          },
            child: Column(
              children: [
                Image(image: NetworkImage("https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/virtual/bag.png")),
                SizedBox(height: 5,),

                Text("Offers",style: TextStyle(color: Colors.black,
                    fontSize: 15,fontWeight: FontWeight.w500),),

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


        ],) ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(cursorColor:Colors.grey ,decoration: InputDecoration(
                fillColor: Colors.grey.withOpacity(0.2),
                filled: true,labelText: "Search",prefixIcon: Icon(Icons.search_rounded),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color:Colors.grey.withOpacity(0.2), ),

                ), ),),
            ),
             SizedBox(height: 15,),
            dessertcard(image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/apple_pie.jpg", name:"French Apple Pie", title: "Minute by tuk tuk"),
            SizedBox(height: 15,),
            dessertcard(image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/dessert5.jpg", name:"FFudgy Chewy Brownies", title: "Minute by tuk tuk"),
            SizedBox(height: 15,),
            dessertcard(image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/dessert3.jpg", name:"Amercain Pancake", title: "Minute by tuk tuk"),
            SizedBox(height: 15,),
            dessertcard(image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/dessert2.jpg", name:"Cohcolate cake", title: "Minute by tuk tuk"),
            SizedBox(height: 15,),
            dessertcard(image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/dessert.jpg", name:"Dark Chocolate Cake", title: "Cakes by Tella"),
            SizedBox(height:15,),
            dessertcard(image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/dessert4.jpg", name:"Street Shake", title: "Cafe Racer"),

          ],
        ),


        ),
    );
  }
}
class dessertcard extends StatelessWidget{
  final String image;
  final String name;
  final String title;
  dessertcard({
    required this.image,
    required this.name,
    required this.title,

});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Stack(
        children: [
          Container(
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),

          image: DecorationImage(image: NetworkImage("$image"),fit: BoxFit.cover)),
          ),
    Container(
    height: 170,
    width: double.infinity,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
    gradient: LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
    Colors.black.withOpacity(0.7),
    Colors.black.withOpacity(0.2),
    ],
    ),
    )),
    Positioned(bottom: 0,left: 0,
           child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("$name",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                      Row(children: [
                        Icon(Icons.star,color: Colors.deepOrange,),
                        Text("4.9",style: TextStyle(fontSize: 15,color: Colors.deepOrange),),
                        Text("  $title",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),


                      ],),
                    ],
                  ),
                ),
         ),


        ],
      ),
    );
  }
}

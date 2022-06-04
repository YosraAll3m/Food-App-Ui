import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mankeyapp/Screens/Profile.dart';
import 'package:mankeyapp/Screens/offers.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'Dessert_Screen.dart';
import 'Home.dart';
import 'More.dart';
class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Menu",
          style: TextStyle(color: Colors.black,fontSize: 25),),
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


        ],) ,
      body: Stack(children: [
        Container(decoration: BoxDecoration(image: DecorationImage(
            image: NetworkImage("https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/virtual/splashIcon.png"),fit: BoxFit.fill)),),
        Padding(
          padding: const EdgeInsets.only(top:110),
          child: Container(height: 360,width: 170,decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(25),
            bottomRight: Radius.circular(25),),color: Colors.deepOrange)),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(cursorColor:Colors.grey ,decoration: InputDecoration(
                fillColor: Colors.grey.withOpacity(0.2),
                filled: true,labelText: "Search",prefixIcon: Icon(Icons.search_rounded),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color:Colors.grey.withOpacity(0.2), ),

                ), ),),
               SizedBox(height: 50,),
              Menu_Catory(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/western2.jpg", Name: "Food"),
              SizedBox(height: 8,),
              Menu_Catory(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/coffee2.jpg", Name:"Beverage"),
              SizedBox(height: 8,),
              Menu_Catory(Image:"https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/dessert.jpg", Name: "Desserts"),
              SizedBox(height: 8,),
              Menu_Catory(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/hamburger3.jpg", Name: "Promotions"),



            ],
          ),
        ),

          ],

      ),

    );
  }
}
class Menu_Catory extends StatelessWidget{
  final String Image;
  final String Name;
  Menu_Catory({
    required this.Image,
    required this.Name,

  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

            Stack(
              children: [
                Container(child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 3,),
                    Text("$Name",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                    SizedBox(height: 3,),
                    Text("80 Item",style: TextStyle(color: Colors.deepOrange,fontSize: 16,),)


                  ],


                ),height: 70,width:340,decoration: BoxDecoration(borderRadius:
                BorderRadius.circular(25), color: Colors.white,boxShadow:[BoxShadow( blurRadius: 10,color: Colors.grey),],)),

                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Dessert ()));

                  },
                    child: Container(height: 50,width: 50,decoration: BoxDecoration(boxShadow:[BoxShadow( blurRadius: 10,color: Colors.grey),],borderRadius: BorderRadius.circular(30),color: Colors.white
                    ),
                      child: Icon(Icons.arrow_forward_ios,color: Colors.deepOrange,),),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(height: 75,width: 100,decoration: BoxDecoration(shape:BoxShape.circle
                      ,image: DecorationImage(image:NetworkImage("$Image"))),),
                ),



              ],
            ),




      ],
    );
  }
}

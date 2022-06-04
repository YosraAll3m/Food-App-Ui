import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'More.dart';
import 'Home.dart';
import 'Menu.dart';
import 'Profile.dart';
import 'offers.dart';
class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(icon:Icon(Icons.arrow_back_ios,color: Colors.black,), onPressed: () {

        Navigator.pop(context,MaterialPageRoute(builder: (context)=>More()));

      },),
        title: Text("About Us",
          style: TextStyle(color: Colors.black,fontSize: 25),),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [Image(image:
        NetworkImage("https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/virtual/cart.png"))],
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar:CurvedNavigationBar(height: 60,
        backgroundColor:Colors.deepOrange,
        items: [
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


        ],),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          aboutCard(),
          aboutCard(),
          aboutCard(),



        ],),
      ),
    );

  }}
class aboutCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,width: double.infinity,
      child: Row(
        children: [
          CircleAvatar(backgroundColor: Colors.deepOrange,radius: 7,),
          SizedBox(width: 10,),
          Column(
            children: [
              Flexible(child: Text("Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor \nincididunt ut labore et dolore magna\n aliqua. Ut enim ad minim veniam, quis \nnostrud exercitation ullamco laboris \nnisi ut aliquip ex ea commodo consequat. \nDuis aute irure dolor in reprehenderit\n in voluptate velit esse cillum dolore eu \nfugiat nulla pariatur.", style: TextStyle(color: Colors.black,fontSize: 15),)),
              SizedBox(height: 4,),

            ],
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'More.dart';
import 'Home.dart';
import 'Menu.dart';
import 'Profile.dart';
import 'offers.dart';
class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(icon:Icon(Icons.arrow_back_ios,color: Colors.black,), onPressed: () {

        Navigator.pop(context,MaterialPageRoute(builder: (context)=>More()));

      },),
        title: Text("Notifications",
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
          child: Column(
            children: [
            NotifiCard(name: "Your order has been picked up", time: "Now"),
              Divider(color: Colors.black,),
              NotifiCard(name: "Your order has been picked up", time: "1 h ago"),
              Divider(color: Colors.black,),
              NotifiCard(name: "Lorem ipsum dolor sit amet, consectetur", time: "3 h ago"),
              Divider(color: Colors.black,),
              NotifiCard(name:"Lorem ipsum dolor sit amet, consectetur", time: "5 h ago"),
              Divider(color: Colors.black,),
              NotifiCard(name: "Lorem ipsum dolor sit amet, consectetur", time: "05 Sep 2020"),
              Divider(color: Colors.black,),
              NotifiCard(name: "Lorem ipsum dolor sit amet, consectetur", time: "12 Aug 2020"),
              Divider(color: Colors.black,),
              NotifiCard(name: "Lorem ipsum dolor sit amet, consectetur", time: "20 Jul 2020"),
              Divider(color: Colors.black,),
              NotifiCard(name: "Lorem ipsum dolor sit amet, consectetur", time: "12 Jul 2020"),


            ],
          ),
        ),

    );

  }}

  class NotifiCard extends StatelessWidget{
  final String name;
  final String time;
  NotifiCard({
    required this.name,
    required this.time,
  });
    @override
    Widget build(BuildContext context) {
      return Container(
        height: 50,width: double.infinity,
        child: Row(
          children: [
            CircleAvatar(backgroundColor: Colors.deepOrange,radius: 7,),
            SizedBox(width: 10,),
            Column(
              children: [
                Text("$name", style: TextStyle(color: Colors.black,fontSize: 17),),
                SizedBox(height: 4,),
                Text("$time", style: TextStyle(color: Colors.black,fontSize: 17),)

              ],
            )
          ],
        ),
      );
    }
  }
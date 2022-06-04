import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'AboutScreen.dart';
import 'InboxScreen.dart';
import 'MyOrderScreen.dart';
import 'NotificationScreen.dart';
import 'PaymentScreen.dart';


import 'Home.dart';
import 'Menu.dart';
import 'Profile.dart';
import 'offers.dart';
class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
    appBar: AppBar(
    title: Text("More",
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 13,),

            More_Catory(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/virtual/income.png", Name: "Payment Details",
                button: (){

                  Navigator.push(context,MaterialPageRoute(builder: (context)=>PaymentScreen()));

                }),
            SizedBox(height: 20,),
            More_Catory(Image:"https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/virtual/shopping_bag.png", Name: "My Orders",
                button:(){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>MyOrderScreen()));

                }),
            SizedBox(height: 20,),
            More_Catory(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/virtual/noti.png", Name: "Notification",
                button: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>NotificationScreen()));

                }),
            SizedBox(height: 20,),
            More_Catory(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/virtual/mail.png", Name: "Inbox",
                button: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>InboxScreen()));

                }),
            SizedBox(height: 20,),
            More_Catory(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/virtual/info.png", Name: "About Us",
                button: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>AboutScreen()));

                }),

          ],
        ),
      ),
    ),


    );}}
class More_Catory extends StatelessWidget{
  final String Image;
  final String Name;
  final Function button;
  More_Catory({
    required this.Image,
    required this.Name,
    required this.button,

  });
  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(onTap:(){button();},
      child: Column(
        children: [

          Stack(
            children: [
              Container(child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 3,),
                  Text("$Name",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),),
                  SizedBox(height: 3,),


                ],


              ),height: 70,width:360,
                  decoration: BoxDecoration(borderRadius:
              BorderRadius.circular(20), color: Colors.grey.shade100,boxShadow:[BoxShadow( blurRadius: 10,color: Colors.grey),],)),

              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(onTap: (){

                },
                  child: Container(height: 50,width: 50,decoration: BoxDecoration(boxShadow:[BoxShadow( blurRadius: 10,color: Colors.grey),],borderRadius: BorderRadius.circular(30),color: Colors.white
                  ),
                    child: Icon(Icons.arrow_forward_ios,color: Colors.grey,),),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: CircleAvatar(backgroundColor: Colors.grey.shade300,radius: 30,
                  child: Container(height: 75,width: 100,decoration: BoxDecoration(shape:BoxShape.circle
                      ,image: DecorationImage(image:NetworkImage("$Image"))),),
                ),
              ),



            ],
          ),




        ],
      ),
    );
  }
}

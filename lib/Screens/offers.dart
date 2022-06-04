import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'More.dart';
import 'Home.dart';
import 'Menu.dart';
import 'Profile.dart';
class offers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Latest Offers",
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
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start
            ,children: [
            Text("Find discounts, Offer special",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(
              height: 20,
            ),
            InkWell(onTap: (){},
              child: Container( height: 40,width: 200,decoration: BoxDecoration(
                  color: Colors.deepOrange,borderRadius: BorderRadius.circular(25)
              ),child:  Center(
                child: Text("Check Offers", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),

                ),
              ),),),

            offersCard(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/coffee3.jpg", Name: "Cafe Beans"),
            offersCard(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/western2.jpg", Name: "Isso"),
            offersCard(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/breakfast.jpg", Name:"Cafe de Noir"),
            offersCard(Image:"https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/bakery.jpg", Name: "Bakes by Tella"),
            offersCard(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/pizza4.jpg", Name: "Minute by tuk tuk"),



          ],),
        ),
      ),


    );
  }
}
class offersCard extends StatelessWidget{
  final String Image;
  final String Name;
  offersCard({
    required this.Image,
    required this.Name,

  });
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(width: double.infinity,height: 180,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),image: DecorationImage(image: NetworkImage("$Image"),fit: BoxFit.cover)),),
            SizedBox(height: 5,),
            Text("$Name",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Row(children: [
              Icon(Icons.star,color: Colors.deepOrange,),
              Text("4.9",style: TextStyle(fontSize: 15,color: Colors.deepOrange),),
              Text("  (124 ratings) Cafe . Western Food",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),


            ],),

          ],

        ),
      );
  }
}


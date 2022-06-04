import 'package:mankeyapp/Screens/Profile.dart';
import 'package:mankeyapp/Screens/offers.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'Menu.dart';
import 'More.dart';
import 'item.dart';
class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Good morning Akila!",
        style: TextStyle(color: Colors.black),),
      backgroundColor: Colors.white,
        elevation: 0,
        actions: [Image(image:
        NetworkImage("https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/virtual/cart.png"))],
      ),
      bottomNavigationBar:CurvedNavigationBar(height: 60,
        backgroundColor:Colors.deepOrange,
        items: [
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
      body: SingleChildScrollView(child:
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Deilivering to",style: TextStyle(color: Colors.black,
                fontSize: 23,fontWeight: FontWeight.w500),),
            SizedBox(height: 10,),
            Row(children: [
              Text("current location",style: TextStyle(color: Colors.black,
                  fontSize: 22,fontWeight: FontWeight.w500),),
              SizedBox(width: 20,),

              Icon(Icons.arrow_drop_down_sharp,size: 45,color: Colors.deepOrange,),

            ],),
            SizedBox(height: 10,),
            TextFormField(cursorColor:Colors.grey ,decoration: InputDecoration(
              fillColor: Colors.grey.withOpacity(0.2),
              filled: true,labelText: "Search",prefixIcon: Icon(Icons.search_rounded),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color:Colors.grey.withOpacity(0.2), ),

                  ), ),),
            SizedBox(height: 10,),
        SingleChildScrollView(scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CatogeryCard(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/pizza4.jpg", Name: "Italian"),
               CatogeryCard(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/rice2.jpg", Name: "Sri Lankan"),
              CatogeryCard(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/hamburger2.jpg", Name: "Amircain Food"),
              CatogeryCard(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/bakery.jpg", Name: "Franch Food"),
              CatogeryCard(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/rice.jpg", Name: "Indian"),
              CatogeryCard(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/hamburger3.jpg", Name:"Hamburger"),






            ],
          ),
                    ),
            SizedBox(height: 25,),
            Row(children: [
              Text("Popular Restaurants",style: TextStyle(color: Colors.black,
                  fontSize: 24,fontWeight: FontWeight.w500),),
              Spacer(),
              InkWell(onTap: (){},
              child: Text("View All",style: TextStyle(color: Colors.deepOrange,
                  fontSize: 20,fontWeight: FontWeight.w500),),)

            ],),
            RestaurantCard(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/pizza4.jpg", Name: "Minute by tuk tuk"),
            RestaurantCard(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/breakfast.jpg", Name:"Cafe de Noir"),
            RestaurantCard(Image:"https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/bakery.jpg", Name: "Bakes by Tella"),
            SizedBox(height: 7,),
            Row(children: [
              Text(" Most Popular ",style: TextStyle(color: Colors.black,
                  fontSize: 24,fontWeight: FontWeight.w500),),
              Spacer(),
              InkWell(onTap: (){},
                child: Text("View All",style: TextStyle(color: Colors.deepOrange,
                    fontSize: 20,fontWeight: FontWeight.w500),),)

            ],),
         SingleChildScrollView(scrollDirection: Axis.horizontal,
           child: Row(
             children: [
               PopularCard(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/dessert2.jpg", Name: "Cafe De Bambaa"),
               PopularCard(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/hamburger3.jpg", Name: "Burger by Bella"),
               PopularCard(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/bakery.jpg", Name: "Bakes by Tella"),
               PopularCard(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/breakfast.jpg", Name: "Cafe de Noir"),
               PopularCard(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/pizza4.jpg", Name: "Minute by tuk tuk")

             ],
           ),
         ),
            Row(children: [
              Text(" Recent Items ",style: TextStyle(color: Colors.black,
                  fontSize: 24,fontWeight: FontWeight.w500),),
              Spacer(),
              InkWell(onTap: (){},
                child: Text("View All",style: TextStyle(color: Colors.deepOrange,
                    fontSize: 20,fontWeight: FontWeight.w500),),)

            ],),
            SizedBox(height: 7,),
            LastCard(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/dessert5.jpg", Name: "Minute by tuk tuk"),
            LastCard(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/breakfast.jpg", Name:"Cafe de Noir"),
            LastCard(Image:"https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/bakery.jpg", Name:"Bakes by Tella"),
            LastCard(Image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/fruit.jpg", Name: " Fruits by lola")








          ],


        ),
      )),

    );
  }

  
}
class RestaurantCard extends StatelessWidget{
  final String Image;
  final String Name;
  RestaurantCard({
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
class PopularCard extends StatelessWidget{
  final String Image;
  final String Name;
  PopularCard({
    required this.Image,
    required this.Name,

  });
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all( 20.0),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Row(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(width: 230,height: 120,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),image: DecorationImage(image: NetworkImage("$Image"),fit: BoxFit.cover)),),
                  SizedBox(height: 5,),
                  Text("$Name",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                  Row(children: [
                    Text(" Cafe.Western Food",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("  4.9",style: TextStyle(fontSize: 15,color: Colors.deepOrange),),
                    Icon(Icons.star,color: Colors.deepOrange,),




                  ],),

                ],

              ),
            ],
          ),
        ),
      );
  }
}
class CatogeryCard extends StatelessWidget{
  final String Image;
  final String Name;
  CatogeryCard({
    required this.Image,
    required this.Name,

  });
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all( 15.0),
        child: SingleChildScrollView(scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(child: InkWell(onTap: (){
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>item ()));
                  },),width: 100,height: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),image: DecorationImage(image: NetworkImage("$Image"),fit: BoxFit.cover)),),
                  SizedBox(height: 5,),
                  Text("$Name",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),

                ],

              ),
            ],
          ),
        ),
      );
  }
}
class LastCard extends StatelessWidget{
  final String Image;
  final String Name;
  LastCard({
    required this.Image,
    required this.Name,

  });
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all( 15.0),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Row(
            children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(width: 120,height: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),image: DecorationImage(image: NetworkImage("$Image"),fit: BoxFit.cover)),),
                  SizedBox(width: 40,),
                  Column(children: [
                    Text("$Name",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                    SizedBox(height: 3,),

                    Text(" Cafe.Western Food",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.deepOrange,),
                        Text("  4.9",style: TextStyle(fontSize: 15,color: Colors.deepOrange),),
                        Text(" (129) Ratings",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      ],
                    ),





                  ],),

                ],

              ),
            ],
          ),
        ),
      );
  }
}





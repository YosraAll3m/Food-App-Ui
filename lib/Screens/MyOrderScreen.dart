import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'Checkout.dart';
import 'More.dart';
import 'Home.dart';
import 'Menu.dart';
import 'Profile.dart';
import 'offers.dart';
class MyOrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(icon:Icon(Icons.arrow_back_ios,color: Colors.black,), onPressed: () {

        Navigator.pop(context,MaterialPageRoute(builder: (context)=>More()));

      },),
        title: Text("My Order",
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
            Row(
              children: [
                Container(height: 100,width: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image: DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/hamburger2.jpg"),fit: BoxFit.cover)),),
                Column(children: [
                  Text("King Burgers",
                    style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      Icon(Icons.star,color:Colors.deepOrange),
                      Text("4.9",
                        style: TextStyle(color: Colors.deepOrange,fontSize: 15),),
                      Text("(124 ratings) ",
                        style: TextStyle(color: Colors.black,fontSize: 16),),

                    ],
                  ),
                  Text("Burger.Western Food",
                    style: TextStyle(color: Colors.black,fontSize: 16),),
                  Row(
                    children: [
                      Icon(Icons.add_location_sharp,color:Colors.deepOrange),
                      Text("No 03, 4th Lane, Newyork",
                        style: TextStyle(color: Colors.black,fontSize: 16),),

                    ],
                  ),

                ],),
              ],
            ),
          SizedBox(height: 15,),
          feild(title:"Beef Burger", price: "\$16"),
          SizedBox(height: 3,),
          feild(title: "Classic Burger", price: "\$15"),
          SizedBox(height: 3,),
          feild(title: "Cheese Chicken Burger", price: "\$18"),
          SizedBox(height: 3,),
          feild(title: "Chicken Legs Basket", price: "\$20"),
          SizedBox(height: 3,),
          feild(title: "French Fries Large", price: "\$5"),
          SizedBox(height: 3,),
          Row(
        children: [
          Expanded(
            child: Text(
              "Delivery Instruction",
              style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    color:  Colors.deepOrange,
                  ),
                  Text(
                    "Add Notes",
                    style: TextStyle(
                      color: Colors.deepOrange,
                    ),
                  )
                ],
              ))
        ],
      ),
          form(title: "Sub Total", price: "\$70"),
          form(title:"Delivery Cost", price: "\$2"),
          form(title: "Total", price: "\$73"),
          SizedBox(height: 15,),
          Center(
            child: InkWell(onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Checkout()));

            },
              child: Container( height: 50,width: 300,decoration: BoxDecoration(
                  color: Colors.deepOrange,borderRadius: BorderRadius.circular(25)
              ),child:  Center(
                child: Row(
                  children: [ SizedBox(width:70,)
                    ,IconButton(
                    onPressed: () {
                    },
                    icon: Icon(
                      Icons.add,color: Colors.white,
                    ),
                  ),
                    Text("Checkout", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),

                  ],),


              ),

              ),
            ),
          ),



        ]),),
    );

  }}
  class feild extends StatelessWidget{
  final String title;
  final String price;
  feild({
    required this.title,
    required this.price,
  });
    @override
    Widget build(BuildContext context) {
      return Container(
        height: 30,width: double.infinity,color: Colors.grey.shade100,
        child: Row(children: [
          Text("$title  x1",
            style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
          Spacer(),
          Text("$price",
            style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),

        ],),
      );
    }
  }
class form extends StatelessWidget{
  final String title;
  final String price;
  form({
    required this.title,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,width: double.infinity,color: Colors.white,
      child: Row(children: [
        Text("$title",
          style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
        Spacer(),
        Text("$price",
          style: TextStyle(color: Colors.deepOrange,fontSize: 17,fontWeight: FontWeight.bold),),

      ],),
    );
  }
}
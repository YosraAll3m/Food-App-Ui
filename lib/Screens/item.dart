import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
import 'Menu.dart';
import 'Profile.dart';
import 'offers.dart';
class item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

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
      body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.5,
              width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/pizza3.jpg"),fit: BoxFit.cover)),),
            Container(
              height: MediaQuery.of(context).size.height*0.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0, 0.4],
                  colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.0),
                  ],
                ),
              ),
            ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(children: [
            Icon(Icons.arrow_back_ios,color: Colors.white,),
            Spacer(),
            Icon(Icons.shopping_cart,color: Colors.white,),
          ],),
        ),
          Stack(
            children: [
        SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.only(top:310.0),
          child: Container(
            height: 750,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
                vertical: 30),
            decoration: BoxDecoration(color: Colors.white
                ,boxShadow: [BoxShadow( blurRadius: 10,color: Colors.grey)],
                borderRadius: BorderRadius.only( topLeft: Radius.circular(40),
                     topRight: Radius.circular(40),)),
            child:Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                "Tandoori Chicken Pizza",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Row(children: [
                    Icon(Icons.star,color:Colors.deepOrange),
                    Icon(Icons.star,color:Colors.deepOrange),
                    Icon(Icons.star,color:Colors.deepOrange),
                    Icon(Icons.star,color:Colors.deepOrange),
                    Icon(Icons.star_half_outlined,color:Colors.deepOrange),


                  ],),
                  SizedBox(height: 5,),
                  Text(
                    "4.5 Star Ratings",style: TextStyle(fontSize: 17,color: Colors.deepOrange),),
                     Row(
                       children: [
                         Spacer(),
                         Text(
                          "RS. 750",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                       ],
                     ),
                  Text(
                    "Description",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                  SizedBox(height: 15,),
                  Divider(color: Colors.black,),
                  SizedBox(height: 5,),
                  Text(
                    "Customize your Order",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                   Container(child: Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: Row(children: [
                       Text("Select the size of portion",style: TextStyle(fontSize: 19),),
                     Spacer(),
                       Icon(Icons.arrow_circle_down_sharp,color: Colors.deepOrange,)
                     ],),
                   ),
                       height: 50,width: 380,decoration: BoxDecoration(color: Colors.grey.shade100
                       ,boxShadow: [BoxShadow( blurRadius: 10,color: Colors.grey)],
                       borderRadius: BorderRadius.circular(25))),
                  SizedBox(height: 20,),
                  Container(child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(children: [
                      Text("Select the ingredients",style: TextStyle(fontSize: 19),),
                      Spacer(),
                      Icon(Icons.arrow_circle_down_sharp,color: Colors.deepOrange,)
                    ],),
                  ),
                      height: 50,width: 380,decoration: BoxDecoration(color: Colors.grey.shade100
                          ,boxShadow: [BoxShadow( blurRadius: 10,color: Colors.grey)],
                          borderRadius: BorderRadius.circular(25))),
                  SizedBox(height: 20,),
                  Row(children: [
                    Text(
                      "Number of Portions",style: TextStyle(fontSize: 20),),
                    SizedBox(width: 8,),
                    Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(color: Colors.deepOrange,borderRadius: BorderRadius.circular(25)),
                      child: Center(child: Text(" - ",style: TextStyle(color:Colors.white,fontSize: 25),)),
                    ),
                    SizedBox(width: 8,),
                    Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(boxShadow: [BoxShadow( blurRadius: 10,color: Colors.deepOrange)],color: Colors.white,borderRadius: BorderRadius.circular(25)),
                      child: Center(child: Text(" 3 ",style: TextStyle(color:Colors.deepOrange,fontSize: 25),)),
                    ),
                    SizedBox(width: 8,),
                    Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(color: Colors.deepOrange,borderRadius: BorderRadius.circular(25)),
                      child: Center(child: Text(" + ",style: TextStyle(color:Colors.white,fontSize: 25),)),
                    ),
                  ],),
                  SizedBox(height: 30,),
                  Center(
                    child: Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(boxShadow: [BoxShadow( blurRadius: 10,color: Colors.grey)],color: Colors.white,borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Total Price",style: TextStyle(color: Colors.grey,fontSize: 20),),
                            SizedBox(height: 5,),
                            Text("LKR 1500",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),

                            InkWell(onTap: (){},
                              child: Container( height: 40,width: 200,decoration: BoxDecoration(
                                  color: Colors.deepOrange,borderRadius: BorderRadius.circular(25)
                              ),child:  Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.shopping_cart,color: Colors.white,),
                                      Center(
                                        child: Text("Add to Cart", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),

                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),),),

                          ],
                        ),
                      ),
                    ),
                  )









                ],
              ),
            ),



              ),),
        ),
          ],
        ),

],

),



);

    }}
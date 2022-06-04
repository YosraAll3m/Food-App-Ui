import 'package:mankeyapp/Screens/Profile.dart';
import 'package:mankeyapp/Screens/offers.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
import 'Menu.dart';
import 'More.dart';
class Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(leading: IconButton(icon:Icon(Icons.arrow_back_ios,color: Colors.black,), onPressed: () {

    Navigator.pop(context,MaterialPageRoute(builder: (context)=>More()));

    },),
    title: Text("Checkout",
    style: TextStyle(color: Colors.black,fontSize: 25),),
    backgroundColor: Colors.white,
    elevation: 0,

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
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
        Text("Delivery Address",
          style: TextStyle(color: Colors.black,fontSize: 23),),
        Row(children: [
          Text("653 Nostrand Ave., Brooklyn, NY 11216",
            style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
          Spacer(),
          TextButton(onPressed: (){
            },child: Text("Change",style: TextStyle(color: Colors.deepOrange,fontSize: 18),),),
        ],),
         Row(
              children: [
                Text("Payment Methods",
                  style: TextStyle(color: Colors.black,fontSize: 20),),
               Spacer(),
                Icon(
                  Icons.add,
                  color:  Colors.deepOrange,
                ),
                Text(
                  "Add Card",
                  style: TextStyle(
                    color: Colors.deepOrange,
                  ),
                )
              ],
            ),
        SizedBox(height: 15,),

        Container(height: 50,width: double.infinity,
          decoration: BoxDecoration(color: Colors.grey.shade100,borderRadius: BorderRadius.circular(20)),
          child: Row(children: [
            Text("Cash on delivery"),
            Spacer(),
            Icon(Icons.circle_outlined,color:Colors.deepOrange)

          ],),

        ),
        SizedBox(height: 10,),

        box(text: "    **** **** **** 2187", image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/visa2.png"),
        SizedBox(height: 10,),
        box(text: "   yosra.allam@email.com", image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/paypal.png"),
        SizedBox(height: 15,),

        form(title: "Sub Total", price: "\$70"),
        form(title:"Delivery Cost", price: "\$2"),
        form(title: "Total", price: "\$73"),
        SizedBox(height: 15,),
        Center(
          child: InkWell(onTap: (){
            showModalBottomSheet(context: context,
                builder: (BuildContext context) {
                  return
                    Container(
                      height: 500,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.white,borderRadius:
                      BorderRadius.only(topRight: Radius.circular(20),topLeft:Radius.circular(20 )),
                          boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 10)]
                      ),child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SingleChildScrollView(
                        child: Column(crossAxisAlignment: CrossAxisAlignment.center
                          ,
                          children: [
                            Container(height: 200,width: 200,decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/virtual/vector4.png"))),),
                            SizedBox(height: 6,),

                            Text("Thank You!",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
                            SizedBox(height: 6,),

                            Text("For Your Order",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
                            SizedBox(height: 6,),

                            Center(
                              child: Container( height: 50,width: 300,decoration: BoxDecoration(
                                  color: Colors.deepOrange,borderRadius: BorderRadius.circular(25)
                              ),child:  Center(

                              child:
                              InkWell(child: Text("Track My Order", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),


),

                              ),

                              ),
                            ),
                            SizedBox(height: 15,),
                            Center(
                              child: Container( height: 50,width: 300,decoration: BoxDecoration(
                                  color: Colors.white,borderRadius: BorderRadius.circular(25),                          boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 10)]

                              ),child:
                              Center(

                                 child:   InkWell(
                                 onTap: (){
                                   Navigator.push(context,MaterialPageRoute(builder: (context)=>Home ()));

                                 }

                                 ,child: Text("Back To Home",
                                 style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),




                              ),

                              ),
                            ),




                          ],





                        ),
                      ),
                    ),






                    );

                }
            );
          },
            child: Container( height: 50,width: 300,decoration: BoxDecoration(
                color: Colors.deepOrange,borderRadius: BorderRadius.circular(25)
            ),child:  Center(
              child: Row(
                children: [ SizedBox(width:70,),
                  Text("Send Order", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),

                ],),


            ),

            ),
          ),
        ),


      ],),
    ),




    );}}
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
class box extends StatelessWidget{
  final String text;
  final String image;

  box({required this.text,
  required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Container(height: 50,width: double.infinity,
    decoration: BoxDecoration(color: Colors.grey.shade100,borderRadius: BorderRadius.circular(10)),
      child: Row(children: [
        Container(height: 40,width: 40,decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("$image"))),),
        Text("$text"),
        Spacer(),
        Icon(Icons.circle_outlined,color:Colors.deepOrange)

      ],),

    );
}}
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'More.dart';
import 'Home.dart';
import 'Menu.dart';
import 'Profile.dart';
import 'offers.dart';
class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(icon:Icon(Icons.arrow_back_ios,color: Colors.black,), onPressed: () {

        Navigator.pop(context,MaterialPageRoute(builder: (context)=>More()));

      },),
      title: Text("Payment Details",
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Customize your payment method",style: TextStyle(color: Colors.black,fontSize: 20),),
            SizedBox(height: 15,),
            Divider(color: Colors.black,),
            SizedBox(height: 30,),
            Container(height: 180,width: double.infinity,decoration: BoxDecoration(borderRadius:
            BorderRadius.circular(20), color: Colors.grey.shade100,boxShadow:[BoxShadow( blurRadius: 10,color: Colors.grey),],),
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Cash/Card on delivery",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
                    Divider(color: Colors.black,),
                    Row(children: [
                      Container(height: 50,width: 50,decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/real/visa2.png"))),),
                      SizedBox(width: 30,),

                      Text("**** ****"),
                      SizedBox(width: 30,),
                      Text("2187"),
                      Spacer(),
                      InkWell(onTap: (){},
                      child: Container(child:Center(child: Text("Delete Card",style: TextStyle(color: Colors.deepOrange,fontSize: 17),)),
                        height: 35,width: 100,decoration: BoxDecoration(borderRadius:
                      BorderRadius.circular(20), color: Colors.white,boxShadow:[BoxShadow( blurRadius: 5,color: Colors.deepOrange),],),),),
                    ],),
                    Divider(color: Colors.black,),
                    Text("Other Methods",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),

                  ],
                ),
            ),
            ),

               SizedBox(height: 30,),
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
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                Icons.clear,
                              ),
                            )
                          ],
                        ),
                        Text("Add Credit/Debit Card",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold),),
                        Divider(color: Colors.black,),
                        feild(name: "Card Number"),
                        Row(children: [

                          Text("Expiry"),
                          SizedBox(width: 30,),
                          Container(child:Center(child: Text("MM",style: TextStyle(color: Colors.black,fontSize: 17),)),
                            height: 35,width: 90,decoration: BoxDecoration(borderRadius:
                            BorderRadius.circular(20), color: Colors.grey,),),
                          SizedBox(width: 30,),

                          Container(child:Center(child: Text("YY",style: TextStyle(color: Colors.black,fontSize: 17),)),
                            height: 35,width: 90,decoration: BoxDecoration(borderRadius:
                            BorderRadius.circular(20), color: Colors.grey,),),

                        ],),
                        feild(name: "Security Code"),
                        feild(name: "First Name"),
                        feild(name: "Last Name"),
                        Row(children: [

                          Text("You can remove this card"),
                          Spacer(),
                          Switch(value:true, onChanged:(_){},activeColor: Colors.deepOrange,)


                        ],),
                        Center(
                          child: Container( height: 50,width: 300,decoration: BoxDecoration(
                              color: Colors.deepOrange,borderRadius: BorderRadius.circular(25)
                          ),child:  Center(
                            child: Row(
                              children: [ IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();

                                },
                                icon: Icon(
                                  Icons.add,color: Colors.white,
                                ),
                              ),
                                Text("Add Credit/Debit Card", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),

                              ],),


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
                    children: [ IconButton(
                      onPressed: () {
                      },
                      icon: Icon(
                        Icons.add,color: Colors.white,
                      ),
                    ),
                      Text("Add Credit/Debit Card", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),

                        ],),


                      ),

                  ),
                ),
            ),
        ],

    ),),

    );

  }}
  class feild extends StatelessWidget{
  final String name;
  feild({
    required this.name,
  });
    @override
    Widget build(BuildContext context) {
      return
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(cursorColor:Colors.grey ,
            decoration: InputDecoration(labelText: "$name",
            fillColor: Colors.grey.shade100,
            filled: true,
            labelStyle: TextStyle(color:Colors.black,
                fontWeight: FontWeight.bold,fontSize: 17),
            focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(
                color:Colors.grey)),
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)
                ,borderSide: BorderSide(color:Colors.grey)), ),
      ),
        );

    }
  }
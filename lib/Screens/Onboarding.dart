import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'Home.dart';
import 'LoginScreen.dart';
class Boarding{
  final  String image;
  final String title;
  final String desc;

  Boarding({
    required this.image,
    required this.title,
    required this.desc,


  });
}
class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  var boardcontroller=PageController();

  List<Boarding>boarding=[
    Boarding(image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/virtual/vector1.png", title: "Find Food You Love ",desc:"Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep"),
    Boarding(image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/virtual/vector2.png", title: "Fast Delivery",desc: "Fast food delivery to your home, office wherever you are"),
    Boarding(image: "https://raw.githubusercontent.com/muhammadtalhasultan/Flutter-Food-Delivery-App/main/assets/images/virtual/vector2.png", title: "Live Tracking",desc:    "Real time tracking of your food on the app once you placed the order"),
  ];
  bool isLast=false;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(controller: boardcontroller
              ,itemBuilder:(context,index)=>onBoardingItem(boarding[index]),
              itemCount:boarding.length,
              onPageChanged: (int index){
                if(index==boarding.length-1){
                  setState(() {
                    isLast=true;
                  });
                }else{
                  setState(() {
                    isLast=false;
                  });
                }

              },),
          ),

        ],
      ),
    );
  }

  Widget onBoardingItem(Boarding model)=>Stack(
    children: [
      Column(
        children: [
          Expanded(
            child: Container(decoration: BoxDecoration(image:DecorationImage
              (image: NetworkImage("${model.image}"),)),),
          ),
          Text("${model.title}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
          Padding(
            padding: const EdgeInsets.only(left: 35.0,top: 20),
            child: Text("${model.desc}",style: TextStyle(fontSize: 20,color: Colors.black),),
          ),
          SizedBox(height: 30,),


          SmoothPageIndicator(controller: boardcontroller, count:boarding.length,
            effect:ExpandingDotsEffect(dotColor:Colors.grey,spacing: 7,
                activeDotColor:Colors.deepOrange,
                dotHeight: 15,

            ),  ),
          SizedBox(height: 30,),

          Center(
            child: InkWell(onTap: (){
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Home()));
            },
              child: Container( height: 50,width: 300,decoration: BoxDecoration(
                  color: Colors.deepOrange,borderRadius: BorderRadius.circular(25)
              ),child:  Center(
                child: Text("Get Start", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),

                ),
              ),),),
          ),
          SizedBox(height: 30,),






        ],
          ),],


  );
  void Login(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
  }
}

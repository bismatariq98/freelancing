import 'package:freelancing/main.dart';
import 'package:freelancing/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class GigDescription extends StatefulWidget {
  const GigDescription({ Key? key }) : super(key: key);

  @override
  _GigDescriptionState createState() => _GigDescriptionState();
}

class _GigDescriptionState extends State<GigDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child:
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal:15.0),
                     child: Text(
                       "Delivery Vegetable services name here with second row also if its long",
                       style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                       fontSize: 22),),
                   )),
                   Container(
                   height: 50,
                     width: 50,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(40),
                     
                   ),
                   child: Image.asset("assets/images/heart.png"),
                   )
                ],
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0),
                child: Row(children: [
                  Text("Service Rating:",style: TextStyle(fontSize: 22,color: Colors.grey),),
                  RatingBarIndicator(
    rating: 2.75,
    itemBuilder: (context, index) => Icon(
         Icons.star,
         color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 24.0,
    direction: Axis.horizontal,
),
SizedBox(width: 7,),
          Text("4.5",style: TextStyle(fontSize: 15,color: Colors.green),),
          SizedBox(width: 7,),
           Text("(8 Feedback)",style: TextStyle(fontSize: 15,color: Colors.green),),

                ],),
              )
            ],
          ),
        ),
      ),
      
    );
  }
}
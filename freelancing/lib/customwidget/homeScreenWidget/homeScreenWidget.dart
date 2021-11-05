import 'package:freelancing/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:freelancing/constant/color.dart';

seeAll(String text){
  return 

    Padding(padding: EdgeInsets.symmetric(horizontal: 10),
  child:     Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
       Text(text,style: TextStyle(fontSize: 24),),
       Row(
         children: [
           Text("See All",style:TextStyle(color: primaryColor,fontSize:17)),
           Container(
             height: 12,
             width: 12,
             decoration: BoxDecoration(
             image: DecorationImage(image: AssetImage("assets/images/forward.png"),fit: BoxFit.cover)
           ),)
         ],
       ),
        

     ],) ,
  
  );
}




appBarWidget(){
 return 

   Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
     Image.asset("assets/images/notification.png",height: 40,width: 40,),
     Row(children: [
    Image.asset("assets/images/3.png",height: 50,width: 50,),
     Image.asset("assets/images/4.png",height: 70,width: 70,),
     ],),
     Image.asset("assets/images/notification.png",height: 40,width: 40,),

   ],);

}
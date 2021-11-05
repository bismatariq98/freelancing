import 'package:freelancing/main.dart';
import 'package:flutter/material.dart';



cards(String text,String texttwo,Color color){
return                                                    
Card(
  elevation: 15,shadowColor: Colors.grey,

child: Container(
  height: 80,
  width: 170,
  child:   Padding(
  
    padding: const EdgeInsets.symmetric(vertical:16.0,horizontal: 10),
  
    child: Column(children: [
  
      Text(text,style:TextStyle(color: color,fontSize:12),
      
      ),
      SizedBox(height: 4,),
  
      Text(texttwo),
  
  
  
      
  
    ],),
  
  ),
),

);


}
import 'package:freelancing/constant/color.dart';
import 'package:freelancing/customwidget/loginwidget/header.dart';
import 'package:freelancing/main.dart';
import 'package:flutter/material.dart';
import 'package:freelancing/screen/accountCreated.dart';
import 'package:get/get.dart';


class VerificationCode extends StatefulWidget {
  const VerificationCode({ Key? key }) : super(key: key);

  @override
  _VerificationCodeState createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
       children: [
         Column(children: [
           Header(),
           SizedBox(height:14),
           Padding(
             padding: const EdgeInsets.all(12.0),
             child: Card(
               elevation: 9,
               color: backgroundColor,
               shadowColor: Colors.green,
               child:Padding(
                 padding: const EdgeInsets.symmetric(vertical:12.0),
                 child: Column(children: [
                   Center(child: Text("Verification Code",style: TextStyle(color: primaryColor,fontSize: 25,fontWeight:FontWeight.bold,))),

                   SizedBox(height: 20,),
                   Container(
                     color: Colors.white,
                      height: 50,
                      width: Get.width,
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: TextFormField(

                       textAlign: TextAlign.center,
                       decoration: InputDecoration.collapsed(hintText: "Password",hintStyle: TextStyle(fontSize: 20)),

                   ),
                     ),),
                     SizedBox(height: 20,),
                     Center(child: Text("Resend Code",style: TextStyle(color: primaryColor,fontSize: 25,fontWeight:FontWeight.bold,))),
                       SizedBox(height: 20,),
                       Center(
                         child: GestureDetector(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>
                             AccountCreated(),
                             ));
                           },
                           child: Container(
                              height: 60,
                              width: 200,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(8),
                              color:primaryColor,
                              
                             ),
                             child: Center(child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 20),)),
                         
                           ),
                         ),
                       ),
                       

                 ],),
               ) ,
                          ),
           )
         ],)
       ],

      ),
      
    );
  }
}
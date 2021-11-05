import 'package:freelancing/main.dart';
import 'package:flutter/material.dart';
import 'package:freelancing/screen/homeScreen.dart';
import 'package:get/get.dart';
import 'package:freelancing/constant/color.dart';

class AccountCreated extends StatefulWidget {
  const AccountCreated({ Key? key }) : super(key: key);

  @override
  _AccountCreatedState createState() => _AccountCreatedState();
}

class _AccountCreatedState extends State<AccountCreated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:SafeArea(
       child: Container(
         height: Get.height,
         width: Get.width,
          
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/3.png"),fit: BoxFit.cover)
              ),),
              SizedBox(height: 20,),
              Text("Account Created Successfully",style: TextStyle(fontSize: 28),),
                          Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/tick.png"),fit: BoxFit.cover)
              ),),
               Center(
                           child: GestureDetector(
                             onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>
                               HomeScreen(),
                               ));
                             },
                             child: Container(
                                height: 60,
                                width: 300,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(8),
                                color:primaryColor,
                                
                               ),
                               child: Center(child: Text("Proceed to Login",style: TextStyle(color: Colors.white,fontSize: 20),)),
                           
                             ),
                           ),
                         )
            ],),
          ),
     
       ),
     )     
    );
  }
}
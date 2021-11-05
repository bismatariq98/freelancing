import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:freelancing/constant/color.dart';
import 'package:freelancing/customwidget/userProfileWidget/userProfileWidget.dart';
import 'package:freelancing/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileUser extends StatefulWidget {
  const ProfileUser({ Key? key }) : super(key: key);

  @override
  _ProfileUserState createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children:[
     Container(
             height: 1300,
             width: Get.width,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Container(height: 40,width: 40,
                 decoration: BoxDecoration(
                   image: DecorationImage(image: AssetImage("assets/images/5.png"),
                   
                   
                   ),
              
                 ),             
                 ),
        
                 SizedBox(height: 20,),
                 Center(
                   child: Container(
                     height: 130,
                     width: 130,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(90),
                       border: Border.all(width:12,color:Color(0XFF8CD8B4) ),
                       image: DecorationImage(image: AssetImage("assets/images/images1.png"),fit: BoxFit.cover)
                     ),
                   ),
                 ),
                 SizedBox(height: 5,),
                 Center(child: Text("Freelancer UserName",style: TextStyle(fontSize: 22),)),
                                    Row(
                                      mainAxisAlignment:MainAxisAlignment.center,
                                      children: [
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
        Text("4/6")
                                    ],),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Member Since ",style:TextStyle(color: Colors.grey,fontSize: 17)),
                                        Text("05/04/2020",style:TextStyle(color: Colors.grey,fontSize: 17)),
                                        
        
                                      ],
                                    ),
                                     Center(child: Text("Country:India",style:TextStyle(color: Colors.grey,fontSize: 17))),
                                           Center(child: Text("40usd/hour",style:TextStyle(color: Colors.green,fontSize: 17))),
                                           SizedBox(height:15),
                                           Padding(
                                             padding: const EdgeInsets.symmetric(horizontal:8.0),
                                             child: Card(
                                               elevation: 15,
                                               shadowColor: Colors.grey,
                                               child:Container(child: Column(
                                                 children: [
                                                   Padding(
                                                     padding: const EdgeInsets.symmetric(horizontal:12.0),
                                                     child: Row(
                                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                       children: [
                                                          cards("12","Ongoing Project",Colors.blue),
                                                       cards("100%","Success Rate",Colors.green)
                                                     ],),
                                                   ),
                                                   SizedBox(height:20),
                                                     Padding(
                                                     padding: const EdgeInsets.symmetric(horizontal:12.0),
                                                     child: Row(
                                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                       children: [
                                                          cards("12","Cancelled Project",Colors.red),
                                                       cards("20","Completed Project",Colors.green)
                                                     ],),
                                                   ),
                                                   SizedBox(height: 10,),
                                                   Card(
                                                     
                                                     elevation: 10,shadowColor: Colors.grey,
                                                   child: Column(
                                                     crossAxisAlignment: CrossAxisAlignment.start,
                                                     children: [
                                                     Text("About me",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24)),
                                                     SizedBox(height: 5,),
                                                     Text("ajsdkjahskjdhakjshdkjashdjkashklajsdlkjaklsdjlkasjdlkajslkdjalksddkjahskjdhaksjdhkajsdhkjashdkjahsdkajkshdkasjdlkjaskldjaslkdjlkasjdlkajdlkajskldajskldjalksdjklasdjlk")
                                                   ],),
                                                   
                                                   ),
                                                   SizedBox(height: 10,),
                                                   Padding(
                                                     padding: const EdgeInsets.symmetric(horizontal:12.0),
                                                     child: Row(
                                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                       children: [
                                                       Text("Total Earnings:",style: TextStyle(fontSize: 20),),
                                                       Text("500",style: TextStyle(color: Colors.green,fontSize: 20),)
                                                     ],),
                                                   ),
                                                   SizedBox(height:15),
                                                   Container(height: 55,width: 160,
                                                   decoration: BoxDecoration(
                                                     color:primaryColor,
                                                     borderRadius: BorderRadius.circular(12),
                                                   ),
                                             child: Center(child: Text("SEND OFFER",style: TextStyle(color:Colors.white,fontSize: 18,fontWeight:FontWeight.bold,)))
                                                   ),
                                                   SizedBox(height: 10,),
                                                 ],
                                               ),)
                                             ),
                                           ),
                                           SizedBox(height:10),
                                           Container(
                                             height:350,
                                             width: Get.width,
                                             child: Card(shadowColor: Colors.grey,
                                             elevation: 10,
                                               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),),
                                             child: Padding(
                                               padding: const EdgeInsets.symmetric(vertical:10.0),
                                               child: Column(
                                                 crossAxisAlignment: CrossAxisAlignment.start,
                                                 children: [
                                                 Padding(
                                                   padding: const EdgeInsets.symmetric(horizontal:12.0),
                                                   child: Text("My Services",style:TextStyle(fontSize: 20,
                                                   fontWeight:FontWeight.bold)),
                                                 ),
                                                 SizedBox(height:16),
                                                   Container(
                                                     height: 250,
                                                     width: Get.width,
                                                    //  color: Colors.red,
                                                     child: ListView.builder(
                                                       itemCount: 3,
                                                       scrollDirection: Axis.horizontal,
                                                       itemBuilder: (context,i){
                                                          return Padding(
                                                            padding: const EdgeInsets.only(left: 12),
                                                            child: Container(
                                                            height: Get.height,
                                                            width: Get.width * 0.75,
                                                            child: Card(
                                                              shape:RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(18),
                                                                 
                                                              ),
                                                              child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                Stack(children: [
                                                                  Positioned(child:Container(
                                                                    height: 150,
                                                                    width: Get.width,
                                                                    decoration: BoxDecoration(
                                                                    image: DecorationImage(image: AssetImage("assets/images/images1.png"),fit: BoxFit.cover)
                                                                  ),)),
                                                                  Positioned(
                                                                    left: 200,
                                                                    child: Container(decoration: BoxDecoration(
                                                                    color: primaryColor,

                                                                  ),
                                                                  child: 
                                                                  Padding(
                                                                    padding: const EdgeInsets.all(8.0),
                                                                    child: Column(children: [
                                                                      Text("250",style: TextStyle(color:Colors.white)),
                                                                      SizedBox(height: 10,),
                                                                      Text("Starting From",style:TextStyle(color: Colors.white))

                                                                    ],),
                                                                  ),
                                                                  ),
                                                                  
                                                                  )
                                                                ],),
                                                                Row(
                                                                  children: [
                                                                  SizedBox(width:8),
                                                                  Container(
                                                                     height: 30,
                                                                     width: 30,
                                                                    decoration: BoxDecoration(
                                                                      image: DecorationImage(image: AssetImage("assets/images/shame.png"),fit: BoxFit.cover)
                                                                    ),
                                                                  ),
                                                                  SizedBox(width: 9),
                                                                  Text("Mukhtar azam")
                                                                ],),
                                                                SizedBox(height: 6),
                                                                  Text("Andriod Developer can develop kikikikikik",style: TextStyle(color: primaryColor),),
                                                                   Row(
                                                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                     children: [
                                                                    Row(
                                                                      children: [
                                                                        Text("3"),
                                                                        Text("3 Sales"),
                                                                      ],
                                                                    ),

          Row(
            children: [
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
        Text("(8 Feedback",style: TextStyle(color:primaryColor),)
                                                                    ],)
                                                                   ],)
                                                              ],),
                                                            ),
                                                            ),
                                                          );
                                                     }),
                                                   )
                                                 
                                                
                                                  // ListView.builder(itemBuilder: 
                                                  // (context,i){
                                                  //   return
                                                  //   Card(
                                                  //     elevation: 10,
                                                  //     shadowColor: Colors.grey,
                                                  //     shape: RoundedRectangleBorder(
                                                  //       borderRadius: BorderRadius.circular(12),

                                                  //     ),
                                                  //     child: Container(
                                                  //     //   decoration: BoxDecoration(
                                                  //     //    image: DecorationImage(image: AssetImage("assets/images/images1.png")),
                                                         
                                                  //     // ),
                                                      
                                                  //     ),
                                                  //   );

                                                  // })
                                               
                                                 
                                               ],),
                                             ),
                                             ),
                                           )
        
        
             ],),
          ),
          ] 
     
        ),
      ),
      
    );
  }
}
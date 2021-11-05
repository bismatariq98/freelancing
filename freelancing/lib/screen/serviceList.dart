import 'package:freelancing/constant/color.dart';
import 'package:freelancing/main.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ServiceList extends StatefulWidget {
  const ServiceList({ Key? key }) : super(key: key);

  @override
  _ServiceListState createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          
          children: [
              Container(
                height: 130,
                width: Get.width,
                child: Card(
                  elevation: 9,

                  child: Row(children: [
                            Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/5.png"),fit: BoxFit.cover)
                            ),),
                       
                      Container(height: 50,width: 270,
                      child: 
                           TextFormField(
                          decoration: new InputDecoration(
                            isDense: true,
                            labelText: "Search Jobs",
                            
                            fillColor: Color(0xFFF5FCF8),
                            filled: true,
                            prefixIcon: Icon(Icons.search,color: Colors.green,),
                           border: InputBorder.none
                            
                          ),
                   
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                                  SizedBox(width: 15,),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color:primaryColor,
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: 
                          Padding(padding: EdgeInsets.all(16),
                          child:       Row(children: [
                            Container(
                              height: 17,
                              width: 17,
                              decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/filter.png",),fit: BoxFit.cover),
                            ),
                            
                            ),
                            SizedBox(width: 7,),
                          Text("Filter",style: TextStyle(color: Colors.white,fontSize: 17),)
                          ],),
                          ),
                    
                        ),
                  
                         ],),
                ),
              ),
              SizedBox(height:20),
              Container(height: Get.height * 0.72,
              width: Get.width,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context,i){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal:25.0),
                    child: Container(height: Get.height * 0.31,
                    width: Get.width,
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
                      
                    
                    ),
                    elevation: 9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                        Row(children: [
 Container(
                         height:40,
                         width: 40,
                         decoration: BoxDecoration(
                           borderRadius:  BorderRadius.circular(20),

                         image:
                          DecorationImage(image: AssetImage("assets/images/shame.png"),fit: BoxFit.cover)
                       ),),
                       Text("Ahmad Mukhtar Ahmad")
                        ],),

                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                          color: primaryColor,
                            
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:8.0),
                          child: Row(children: [
                            Text("Budget",style: TextStyle(color: Colors.white)),
                            SizedBox(width: 10,),
                            Text("250",style: TextStyle(color: Colors.white),)
                          ],),
                        ),
                        ),
                      
                      ]),
                      Text("Ethinical work 2 best sites for making things more techinical",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                      SizedBox(height:10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Row(
                            children: [
                              Container(
                                height: 27,
                                width: 27,
                                decoration:BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/jobtype.png"),fit: BoxFit.cover))),
                                 SizedBox(width: 8,),
                          Text("Job type: Freelance"),
                            ],
                          ),
 Row(
                            children: [
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                   border: Border.all(color: primaryColor)
                                ),
                                child: Center(child: Text("20 proposal",style:TextStyle(color: primaryColor))),
                                ),
                                 SizedBox(width: 8,),
                                  Container(
                                height: 27,
                                width: 27,
                                decoration:BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/heart.png"),fit: BoxFit.cover))),
                            ],
                          ),


                         



                        ],),
                      ),

                      SizedBox(height: 9,),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal:8.0),
    child: Row(
                              children: [
                                Container(
                                  height: 27,
                                  width: 27,
                                  decoration:BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/location.png"),fit: BoxFit.cover))),
                                   SizedBox(width: 8,),
                            Text("Alungadi"),
                              ],
                            ),
  ),
  SizedBox(height: 8,),
     Row(
       children: [
         Container(
                                    height: 30,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: primaryColor
                                    ),
                                    child: Center(child: Text("Apply Now",style:TextStyle(color: Colors.white))),
                                    ),
                                    SizedBox(width: 10,),
                                    Text("Posted on 26/90/09")

       ],
     ),

                    ],),
                    
                    ),
                    ),
                  );
              }),
              )

        ],),
      ),
      
    );
  }
}
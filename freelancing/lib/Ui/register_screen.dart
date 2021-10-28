import 'package:freelancing/main.dart';

import 'package:flutter/material.dart';
import 'package:freelancing/widgets/textfield.dart';
import 'package:freelancing/widgets/textfield.dart';


class RegisterScreen extends StatefulWidget {
  
  const RegisterScreen({ Key? key }) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
  
}

class _RegisterScreenState extends State<RegisterScreen> {


  
  @override
  Widget build(BuildContext context) {
      var height = MediaQuery.of(context).size.height;
       var width = MediaQuery.of(context).size.width;
       List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
  String? _selectedLocation;

    return Scaffold(
      body:
       Container(
        height: height,
        width: width,
      child: Column(
        children: [
          Stack(
            children: [
            
              //  Positioned(
                   
              //      child: Container(
              //        height: 100,
              //        width: width,
              //        decoration: BoxDecoration(
                    
              //          image: DecorationImage(
              //            image: 
              //            AssetImage("asset/elli.png"),
              //            fit:BoxFit.cover,),
                      
              //         //  borderRadius: BorderRadius.only(
              //         //    bottomLeft: Radius.circular(290),
              //         //      bottomRight: Radius.circular(290),
              //         //    )

              //        ),
              //       //  decoration: BoxDecoration(
              //       //    image: DecorationImage(image: AssetImage("asset/new.png"))),
                       
              //          ),
              // ),
      //  Positioned(
               
      //              child: Container(
      //                height: 300,
      //                width: width,
      //                decoration: BoxDecoration(
                    
      //                  image: DecorationImage(
      //                    image: 
      //                    AssetImage("asset/elli.png"),
      //                    fit:BoxFit.cover,),
                      
      //                 //  borderRadius: BorderRadius.only(
      //                 //    bottomLeft: Radius.circular(290),
      //                 //      bottomRight: Radius.circular(290),
      //                 //    )

      //                ),
      //               //  decoration: BoxDecoration(
      //               //    image: DecorationImage(image: AssetImage("asset/new.png"))),
                       
      //                  ),
      //         ),
              Positioned(
                  
                   child: Container(
                     height: 350,
                     width: width,
                     decoration: BoxDecoration(
                    
                       image: DecorationImage(
                         image: 
                         AssetImage("asset/Vector150.png"),
                         fit:BoxFit.cover,),
                     ),
                       ),
              ),
                 
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal:8.0),
                 child: Positioned(
                       top: 0,
                       left: 0,
                     child: Container(
                        height: 300,
                       width: width,
                       decoration: BoxDecoration(
                      
                         image: DecorationImage(
                           image: 
                           AssetImage("asset/elli.png"),
                           fit:BoxFit.cover,),
                       ),
                    
                         
                         ),
              ),
               ),
                Positioned(
                     top: 90,
                     left: 170,
                   child: Container(
                     height: 90,
                     width: 90,
                     decoration: BoxDecoration(
                    
                       image: DecorationImage(
                         image: 
                         AssetImage("asset/Rectangle.png"),
                         fit:BoxFit.cover,),
                     ),
                  
                       
                       ),
              ),
                     Positioned(
                     top: 90,
                     left: 170,
                   child: Container(
                     height: 90,
                     width: 90,
                     decoration: BoxDecoration(
                    
                       image: DecorationImage(
                         image: 
                         AssetImage("asset/Rectangle.png"),
                         fit:BoxFit.cover,),
                     ),
                  
                       
                       ),
              ),
            //  Positioned(
            //          top: 90,
            //          left: 170,
            //        child: Container(
            //         //  height: 90,
            //         //  width: 90,
            //          decoration: BoxDecoration(
                    
            //            image: DecorationImage(
            //              image: 
            //              AssetImage("asset/textx.png"),
            //              fit:BoxFit.cover,),
            //          ),
                  
                       
            //            ),
            //   ),
            



             
            ],
          ),
         Expanded(child:
         
          SingleChildScrollView(
          child: Container(
            height: 900,
            width: width,
            child: Column(
              children: [
                Container(
                  height: 90,
                  width: 70,
                  child: Center(
                     child: DropdownButton(
                       isExpanded: true,
                       iconDisabledColor: Colors.green,
                       iconSize: 38,
                      
                       elevation: 20,
                       iconEnabledColor: Colors.green,
                       hint: Text("Mr",style: TextStyle(fontSize: 22),), // Not necessary for Option 1
                       value: _selectedLocation,
                       onChanged: (String? newValue) {
                         setState(() {
                           _selectedLocation = newValue;
                         });
                       },
                       items: _locations.map((location) {
                         return DropdownMenuItem(
                           child: new Text(location),
                           value: location,
                         );
                       }).toList(),
                     ),
                   ),
                ),
                  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Material(
                      elevation: 9,
                      child: Container(
                        
                               width:150,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                     boxShadow: <BoxShadow>[
                                   BoxShadow(
                color: Colors.red.withOpacity(0.1),
                blurRadius: 1,
                offset: Offset(7, 7),
              ),
                                ]
                                
                                ),
                                child: Padding(
                                  
                                    padding:
                                        EdgeInsets.only(left: 15, right: 15, top: 5),
                                    child: TextFormField(
                                      
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          labelText: 'First Name',
                                          labelStyle: TextStyle(color:Colors.grey,fontSize: 22)
                                        )))),
                    ), 
                    Material(
        // elevation: 9,
        color: Colors.red,
        child:      Container(
               width:150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: <BoxShadow>[
                                   BoxShadow(
                color: Colors.red.withOpacity(0.1),
                blurRadius: 1,
                offset: Offset(7, 7),
              ),
                                ]
                               
                              ),
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 15, right: 15, top: 5),
                                  child: TextFormField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        labelText: 'Last Name',
                                        labelStyle: TextStyle(color: Colors.grey,fontSize:22)
                                        
                                      )))),
                    ),
        
        
                    
        
                
        
              ],),
            ),
            SizedBox(height: 10,),
            textForm("User Name", Icons.verified_user, false, Icons.verified_user),
            SizedBox(height:10),
             textForm("Select Location", Icons.verified_user, true, Icons.location_city),
            SizedBox(height:10),
            textForm("Select Location", Icons.verified_user, true, Icons.location_city),
            SizedBox(height:10),
            textForm("Email", Icons.verified_user, false, Icons.location_city),
            SizedBox(height:10),
              textForm("Password", Icons.verified_user, true, Icons.remove_red_eye),
            SizedBox(height:10),

                                               
                                                          Text("Start as:",style: TextStyle(fontSize: 25,color:Colors.grey),
                                                          
                                                          ),
                                                           SizedBox(height:10),

                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal:60),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                     Text("Freelancer",style: TextStyle(fontSize: 18),),
                                                     imageContainer(30, 30,"asset/icon007.png"),
                                                     Container(
      height: 30.0,
      width: 1.0,
      color: Colors.white30,
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
    ),
 
 Text("Freelancer",style: TextStyle(fontSize: 18),),
                                                     imageContainer(30, 30,"asset/icon009.png"),

                                                     
                                                  ],),
                                                ),
                                               SizedBox(height: 10,),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal:55.0),
                                                  child: Container(height:50,width: width,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(12),
                                                    color:Colors.green
                                                  ),
                                                  child: Center(child: Text("Start Now",style:TextStyle(color:Colors.white))),
                                                  ),
                                                ),
                                                SizedBox(height: 20,),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 70.0),
                                                  child: Row(children: [
                                                    Container(height: 2,width: 80,
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey,

                                                    ),
                                                    ),
                                                    Text("Join Now With",style: TextStyle(color:Colors.grey,fontSize: 16),),
                                                                                   Container(height: 2,width: 80,
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey,

                                                    ),
                                                    ),
                                                  ],),
                                                ),


SizedBox(height: 10,),
   Padding(
     padding: EdgeInsets.symmetric(horizontal:130),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
       Container(height: 60,width: 60,decoration: BoxDecoration(
         image: DecorationImage(image: AssetImage("asset/gmail.png")),
         borderRadius: BorderRadius.circular(40),
         color:Colors.red,),),
            Container(height: 60,width: 60,decoration: BoxDecoration(
         image: DecorationImage(image: AssetImage("asset/facebook.png")),
         borderRadius: BorderRadius.circular(40),
         color:Colors.blue,),),
   
     ],),
   )

              ],
            ),
          ),
        ),),
       

      



  


        
        ],
      ),

      
      ),

      
    );
  }
}
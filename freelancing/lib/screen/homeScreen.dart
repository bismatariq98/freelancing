import 'package:flutter/material.dart';
import 'package:freelancing/customwidget/homeScreenWidget/homeScreenWidget.dart';
import 'package:freelancing/main.dart';
import 'package:get/get.dart';
import 'package:freelancing/constant/color.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Container(
          height: 800,
          width: Get.width,
          child: Column(children: [
            Card(
              elevation: 8,
              shadowColor: Colors.grey,
              child:     Container(
               
              height: Get.height * 0.21,width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
        
            ),
            child: Column(children: [
                  appBarWidget(),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 17),
                  
                  child:      
                   Row(children: [
                     Expanded(
                       child:
                      Container(
                        color: Colors.green.withOpacity(0.2),
                      child:             TextFormField(
                         style: TextStyle(
                           color: Colors.grey,
                         
                         ),
                           decoration: InputDecoration(
                            
                             hintText: "I am Looking For",
                             fillColor: Colors.grey[300],
                        

                             prefixIcon: Icon(Icons.search,color: Colors.green,),
                             
                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(5),

                             ),
                          filled: true,
                           )
                       ) ,
                      )
           
         
                    ), 
                    SizedBox(width: 15,),
                    Container(
                      height: 60,
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

                     ],)
                  ),
                 
            ],),
            ),
            ),
        

seeAll("Services"),
// Container(
//   height: 200,width: Get.width,
//   color: Colors.red,
//   child: ListView.builder(
//   itemCount: 3,
//   scrollDirection: Axis.horizontal,
//   itemBuilder: (context,i){
//   return
//   Padding(padding: EdgeInsets.all(15),
//     child:  
 
// Container(
//   height: Get.height,
//   width: 500,
//   child: Column(children: [
//     Container(
//       height: 200,
//       width: Get.width,
//       decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/images1.png"))),)
//   ],),
//   ),
//   );
// }),
// ),
      
          ],),
        ),
      ),
      
    );
  }
}
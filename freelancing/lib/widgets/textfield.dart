import 'package:freelancing/main.dart';
import 'package:flutter/material.dart';


imageContainer(double height,double width,String image){
  return Container(
      height: height,
      width: width,
    decoration: BoxDecoration(
     image: DecorationImage(image: AssetImage(image,),fit: BoxFit.cover)
  ),);
}

textForm(String text,IconData preicon,bool suffixBool,IconData suffixIcon){

return                                             Container(
                    
                               width:320,
                    
                                              decoration: BoxDecoration(
                    
                                                color: Colors.white,
                    
                                                boxShadow: <BoxShadow>[
                    
                                                   BoxShadow(
                    
                                color: Colors.green.withOpacity(0.1),
                    
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
                                                           suffixIcon: 
                                                                                     suffixBool?      Padding(
                    
                                            padding: EdgeInsets.all(0.0),
                    
                                            child: Icon(suffixIcon,
                                              color: Colors.yellow,

                                            ), 
                                          ):null,
                                                           
                                                          contentPadding: EdgeInsets.only(left:20.0),
                                                          prefixIcon: 
                                                          Padding(
                    
                                            padding: EdgeInsets.all(0.0),
                    
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:Colors.green,
                                                borderRadius: BorderRadius.circular(11)
                                              ),
                                              child: Icon(preicon,
                                                color: Colors.white,

                                              ),
                                            ), 
                                          ),
                                                        border: InputBorder.none,
                                                        labelText: '$text',
                                                        labelStyle: TextStyle(color: Colors.grey,fontSize:22)
                                                      ))));

}
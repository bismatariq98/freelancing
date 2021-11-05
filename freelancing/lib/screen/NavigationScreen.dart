import 'package:freelancing/main.dart';
import 'package:flutter/material.dart';
import 'package:freelancing/screen/homeScreen.dart';


class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({ Key? key }) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
    int _selectedIndex = 0;  
  static const List<Widget> _widgetOptions = <Widget>[  
   HomeScreen(),
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
     Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
  ];  
  
  void _onItemTapped(int index) {  
    setState(() {  
      _selectedIndex = index;  
    });  
  }  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title:Center(
      //     child: Row(children: [
      //       Image.asset("assets/images/3.png",height: 30,),
      //       Image.asset("assets/images/4.png",height: 30,),
            
      //     ],),
      //   ) ,
      //   actions: [
      //     Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/notification.png"))),)
      //   ],
      // ),

      
      body: Center(
       child: _widgetOptions.elementAt(_selectedIndex)
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home",backgroundColor: Colors.white),
           BottomNavigationBarItem(icon: Icon(Icons.home),label: "home",backgroundColor: Colors.white),
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "home",backgroundColor: Colors.white),
                 BottomNavigationBarItem(icon: Icon(Icons.home),label: "home",backgroundColor: Colors.white),
                    BottomNavigationBarItem(icon: Icon(Icons.home),label: "home",backgroundColor: Colors.white),


      ],
        type: BottomNavigationBarType.shifting,  
        currentIndex: _selectedIndex,  
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,  
        iconSize: 40,  
        onTap: _onItemTapped,  
        elevation: 5  
      
      ),
    );
  }
}


// import 'package:freelancing/main.dart';
// import 'package:freelancing/screen/homeScreen.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class NavigationScreen extends StatefulWidget {
//   const NavigationScreen({ Key? key }) : super(key: key);

//   @override
//   _NavigationScreenState createState() => _NavigationScreenState();
// }

// class _NavigationScreenState extends State<NavigationScreen> {
//     int _currentIndex = 0;
//   final List _children = [
//     HomeScreen(),
//     HomeScreen(),
//     HomeScreen(),
//     HomeScreen(),
//   ];
//   void tapped(int index){
//     setState(() {
//      _currentIndex = index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("My Flutter App"),
//       ),
//       bottomNavigationBar: 
//       BottomNavigationBar(
//         onTap: tapped,
//         currentIndex: _currentIndex,
        
//         items: [
//         BottomNavigationBarItem(icon: Icon(Icons.home),
//          label:"Home",
//          backgroundColor: Colors.green

//         ),
//         BottomNavigationBarItem(icon: Icon(Icons.home),
//          label:"Services",

//         ),
//         BottomNavigationBarItem(icon: Icon(Icons.home),
//          label:"Chatd",

//         ),
//         BottomNavigationBarItem(icon: Icon(Icons.home),
//          label:"Home",

//         ),
//         BottomNavigationBarItem(icon: Icon(Icons.home),
//          label:"Home",

//         ),
//         BottomNavigationBarItem(icon: Icon(Icons.home),
//          label:"Home",

//         ),
//       ]),
//       body: _children[_currentIndex],
//     );
//   }
// }
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EmailPasswordField extends StatefulWidget {
  const EmailPasswordField({Key? key}) : super(key: key);

  @override
  _EmailPasswordFieldState createState() => _EmailPasswordFieldState();
}

class _EmailPasswordFieldState extends State<EmailPasswordField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // container for password
        Container(
          height: 50.14,
          width: 321.26,

          // boxdecoration for field

          decoration: BoxDecoration(
            color: Color(0xffF7FFFB),
            borderRadius: BorderRadius.circular(5),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                spreadRadius: 1,
                color: Color(0xffE5E5E5),
                offset: Offset(1, 1),
                blurRadius: 2,
              )
            ],
          ),

          // textfield for email address
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Email",
              border: InputBorder.none,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.normal,
                letterSpacing: 1.2,
              ),
              prefixIcon: Container(
                  margin: EdgeInsets.all(4),
                  height: 30,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(11)),
                  child: Icon(Icons.email, color: Color(0xffF7FFFB), size: 30)),
            ),
          ),
        ),

        SizedBox(
          height: 20,
        ),

        // container for password
        Container(
          height: 50.14,
          width: 321.26,

          // boxdecoration for field

          decoration: BoxDecoration(
            color: Color(0xffF7FFFB),
            borderRadius: BorderRadius.circular(5),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                spreadRadius: 1,
                color: Color(0xffE5E5E5),
                offset: Offset(1, 1),
                blurRadius: 2,
              )
            ],
          ),

          // textfield for email address
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Password",
              border: InputBorder.none,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.normal,
                letterSpacing: 1.2,
              ),
              prefixIcon: Container(
                  margin: EdgeInsets.all(4),
                  height: 30,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(11)),
                  child: Icon(Icons.lock, color: Color(0xffF7FFFB), size: 30)),
            ),
          ),
        ),
      ],
    );
  }
}

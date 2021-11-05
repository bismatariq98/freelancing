// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Header section
        Container(
          height: 320,
          width: 500,
          padding: EdgeInsets.only(top: 48.5, left: 21.5),

          // BoxDecoration section

          decoration: BoxDecoration(
            color: Color(0xffF7FFFB),
            borderRadius: BorderRadius.only(
              topRight: Radius.zero,
              topLeft: Radius.zero,
              bottomLeft: Radius.circular(188),
              bottomRight: Radius.circular(188),
            ),

            // BoxDecoration shadow

            boxShadow: [
              BoxShadow(
                color: Colors.green.shade50.withOpacity(1),
                spreadRadius: 5,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            image: DecorationImage(
              image: AssetImage('assets/images/1.png'),
            ),
          ),

          // Header widgets section

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Image(
                image: AssetImage('assets/images/5.png'),
              ),
              Center(
                child: Image(
                  image: AssetImage('assets/images/3.png'),
                ),
              ),
              SizedBox(
                height: 13.98,
              ),
              Center(
                child: Image(
                  image: AssetImage('assets/images/4.png'),
                ),
              ),
            ],
          ),
        ),
        // Dropdown section
      ],
    );
  }
}

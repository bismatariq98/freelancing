// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, deprecated_member_use

import 'package:freelancing/constant/color.dart';
import 'package:freelancing/customwidget/loginwidget/footer_widget.dart';
import 'package:freelancing/customwidget/loginwidget/header.dart';
import 'package:freelancing/customwidget/loginwidget/text_field.dart';
import 'package:freelancing/screen/NavigationScreen.dart';
import 'package:freelancing/screen/registerscreen/registeration_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: scafoldColor,
      body: ListView(
        children: [
          Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // header section
              Header(),

              SizedBox(
                height: 20,
              ),

              // email section
              EmailPasswordField(),

              Container(
                  padding: EdgeInsets.only(left: 30.05, top: 15),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Radio(value: 'check', groupValue: null, onChanged: null),
                      Text(
                        'Keep me logged in',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'Roboto',
                          color: Color(0xff333D41),
                        ),
                      ),
                      SizedBox(
                        width: 54.48,
                      ),
                      Text(
                        'Forgot password?',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'Roboto',
                          color: Color(0xff00A859),
                        ),
                      ),
                    ],
                  )),

              SizedBox(
                height: 29.15,
              ),

              // LoginButton section
              FlatButton(
                minWidth: 320.9,
                height: 44.14,
                color: Colors.green,
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'Roboto',
                    color: Color(0xffF7FFFB),
                  ),
                ),
                onPressed: () {
                  // // setState(() {});
                  // Get.to(NavigationScreen());
                },
              ),

              Padding(
                padding: const EdgeInsets.only(left: 68, top: 38),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                        color: Color(0xff333D41),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()),
                        );
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                          color: Color(0xff00A859),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              FooterView(),
              SizedBox(
                height: 29.15,
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

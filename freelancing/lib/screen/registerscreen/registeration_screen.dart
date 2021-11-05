// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use

import 'package:freelancing/constant/color.dart';
import 'package:freelancing/customwidget/registrationwidget/drop_down.dart';
import 'package:freelancing/customwidget/registrationwidget/textfield.dart';
import 'package:freelancing/screen/NavigationScreen.dart';
import 'package:freelancing/screen/loginscreen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:freelancing/screen/verificationCode.dart';
import 'package:get/get.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return
     SafeArea(
      child: Scaffold(
        backgroundColor: scafoldColor,
        body: ListView(
          children: [
            Column(
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
                    children: [
                      IconButton(
                          icon: Image.asset('assets/images/5.png'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()),
                            );
                          }),
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
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: DropDown(),
            ),

            SizedBox(height: 13.26),

            // Form section
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 45, right: 15, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 44.0,
                        width: 154.0,

                        // First name  section

                        decoration: BoxDecoration(
                          color: Color(0xffF7FFFB),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 1,
                              color: Color(0xffE5E5E5),
                              offset: Offset(1, 1),
                              blurRadius: 2,
                            )
                          ],
                        ),
                        child: Padding(
                            padding:
                                EdgeInsets.only(left: 20, right: 15, top: 5),
                            child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'First Name',
                                    labelStyle: TextStyle(
                                        color: Colors.grey, fontSize: 22)))),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      // Last name  section
                      Container(
                        height: 44.0,
                        width: 154.0,
                        decoration: BoxDecoration(
                          color: Color(0xffF7FFFB),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 1,
                              color: Color(0xffE5E5E5),
                              offset: Offset(1, 1),
                              blurRadius: 2,
                            )
                          ],
                        ),
                        child: Padding(
                            padding:
                                EdgeInsets.only(left: 20, right: 15, top: 5),
                            child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Last Name',
                                    labelStyle: TextStyle(
                                        color: Colors.grey, fontSize: 22)))),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 11,
                ),

                // input field section

                Column(
                  children: [
                    TextFormFieldWidget(
                      hintText: "User Name",
                      obscureText: false,
                      textInputType: TextInputType.visiblePassword,
                      actionKeyboard: TextInputAction.done,
                      functionValidate: commonValidation,
                      parametersValidate: "Please enter user name.",
                      prefixIcon: Container(
                          margin: EdgeInsets.all(4),
                          height: 30,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(11)),
                          child: Icon(Icons.person,
                              color: Color(0xffF7FFFB), size: 30)),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    TextFormFieldWidget(
                      hintText: "Select Location",
                      obscureText: false,
                      textInputType: TextInputType.visiblePassword,
                      actionKeyboard: TextInputAction.done,
                      functionValidate: commonValidation,
                      parametersValidate: "Please Select Location.",
                      prefixIcon: Container(
                          margin: EdgeInsets.all(4),
                          height: 30,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(11)),
                          child: Icon(Icons.map_rounded,
                              color: Color(0xffF7FFFB), size: 30)),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    TextFormFieldWidget(
                      hintText: "Email",
                      obscureText: false,
                      textInputType: TextInputType.visiblePassword,
                      actionKeyboard: TextInputAction.done,
                      functionValidate: commonValidation,
                      parametersValidate: "Please enter Email.",
                      prefixIcon: Container(
                          margin: EdgeInsets.all(4),
                          height: 30,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(11)),
                          child: Icon(Icons.email,
                              color: Color(0xffF7FFFB), size: 30)),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    TextFormFieldWidget(
                      hintText: "Password",
                      obscureText: false,
                      textInputType: TextInputType.visiblePassword,
                      actionKeyboard: TextInputAction.done,
                      functionValidate: commonValidation,
                      parametersValidate: "Please enter password.",
                      prefixIcon: Container(
                          margin: EdgeInsets.all(4),
                          height: 30,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(11)),
                          child: Icon(Icons.lock,
                              color: Color(0xffF7FFFB), size: 30)),
                    ),
                    SizedBox(
                      height: 11,
                    ),

                    // text section

                    Text(
                      'Start as:',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xff333D41),
                      ),
                    ),

                    SizedBox(
                      height: 11,
                    ),

                    //Row section

                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 39.0),
                          child: Text(
                            'Freelancer',
                            style: TextStyle(
                              color: Color(0xff333D41),
                              fontSize: 18.0,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Image(
                          image: AssetImage('assets/images/g.png'),
                        ),
                        SizedBox(
                          width: 15.48,
                        ),
                        Container(
                            height: 46,
                            child: VerticalDivider(
                              thickness: 2,
                              color: Color(0xffC3C9D7),
                            )),
                        SizedBox(
                          width: 15.48,
                        ),
                        Image(
                          image: AssetImage('assets/images/q.png'),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Emplyoer',
                          style: TextStyle(
                            color: Color(0xff333D41),
                            fontSize: 18.0,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 30.9,
                    ),

                    // Login btn section

                    FlatButton(
                      minWidth: 320.9,
                      height: 44.14,
                      color: Colors.green,
                      child: Text(
                        'START NOW',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontFamily: 'Roboto',
                          color: Color(0xffF7FFFB),
                        ),
                      ),
                      onPressed: () {
                                              Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VerificationCode()),
                        );
                      },
                    ),
                    SizedBox(
                      height: 10.9,
                    ),

                    // last section

                    Row(children: <Widget>[
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(left: 46.8, right: 8.0),
                            child: Divider(
                              color: Colors.black,
                              height: 50,
                            )),
                      ),
                      Text(
                        "Join Now With",
                        style: TextStyle(
                          color: Color(0xff676E80),
                          fontFamily: 'Roboto',
                          fontSize: 15.0,
                        ),
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(left: 8.0, right: 48.0),
                            child: Divider(
                              color: Colors.black,
                              height: 50,
                            )),
                      ),
                    ]),

                    //Google and Fb Icon section

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/gg.png'),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        Image(
                          image: AssetImage('assets/images/fb.png'),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 11,
                    ),

                    Column(
                      children: [
                        Text(
                          'By log in you agree to Gig Life Activities \nAuthority \nConditions of use and Privacy Policy',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  ],
                ),
              ],

              // form section
            ),
          ],
        ),
      ),
    );
  }
}

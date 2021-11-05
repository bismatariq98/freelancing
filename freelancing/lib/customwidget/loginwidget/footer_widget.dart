// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FooterView extends StatefulWidget {
  const FooterView({Key? key}) : super(key: key);

  @override
  _FooterViewState createState() => _FooterViewState();
}

class _FooterViewState extends State<FooterView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
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
          ),
        ],
      ),
    );
  }
}

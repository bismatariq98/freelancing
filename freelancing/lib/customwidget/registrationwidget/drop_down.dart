// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List<String> items = <String>[
    'A',
    'B',
    'C',
    'D',
    'E',
    'M',
  ];

  String dropdownValue = 'M';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 80,

      // dropdown BoxDecoration section

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

      // dropdown text and selection section

      child: Center(
        child: DropdownButton<String>(
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          iconSize: 38,
          value: dropdownValue,
          items: items.map<DropdownMenuItem<String>>(
            (String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  // ignore: prefer_const_constructors
                  style: TextStyle(fontSize: 25, color: Colors.black87),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

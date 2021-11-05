// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unnecessary_null_comparison, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  final TextInputType textInputType;
  final String hintText;
  final Widget prefixIcon;
  final bool obscureText;
  final Function functionValidate;
  final String parametersValidate;
  final TextInputAction actionKeyboard;

  const TextFormFieldWidget(
      {required this.hintText,
      this.obscureText = false,
      required this.functionValidate,
      required this.parametersValidate,
      this.actionKeyboard = TextInputAction.next,
      required this.prefixIcon,
      required this.textInputType});

  @override
  _TextFormFieldWidgetState createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  double bottomPaddingToError = 12;

  @override
  Widget build(BuildContext context) {
    return Container(
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

      child: 
      TextFormField(
        obscureText: widget.obscureText,
        keyboardType: widget.textInputType,
        textInputAction: widget.actionKeyboard,

        style: TextStyle(
          color: Color(0xff31394D),
          fontSize: 18.0,
          fontWeight: FontWeight.w200,
          fontStyle: FontStyle.normal,
          letterSpacing: 1.2,
        ),

        // input field decoration section

        decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          hintText: widget.hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffF7FFFB)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffF7FFFB)),
          ),
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 18.0,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.normal,
            letterSpacing: 1.2,
          ),
          contentPadding: EdgeInsets.only(
              top: 12, bottom: bottomPaddingToError, left: 8.0, right: 8.0),
          isDense: true,
          errorStyle: TextStyle(
            color: Colors.red,
            fontSize: 12.0,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.normal,
            letterSpacing: 1.2,
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffF7FFFB)),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffF7FFFB)),
          ),
        ),

        // validation section

        validator: (value) {
          if (widget.functionValidate != null) {
            String resultValidate =
                widget.functionValidate(value, widget.parametersValidate);
            if (resultValidate != null) {
              return resultValidate;
            }
          }
          return null;
        },
      ),
    );
  }
}

String commonValidation(String value, String messageError) {
  var required = requiredValidator(value, messageError);
  if (required != null) {
    return required;
  }
  return value;
}

String requiredValidator(value, messageError) {
  if (value.isEmpty) {
    return messageError;
  }
  return value;
}

void changeFocus(
    BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}

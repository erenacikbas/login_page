import 'package:flutter/material.dart';

const TextStyle kNormalText = TextStyle(color: Colors.white);

const TextStyle kSmallText = TextStyle(color: Colors.white,fontSize: 13);

const Color kAppThemeColor = Color(0xff3fd490);

const TextStyle kHintText = TextStyle(color: Colors.grey,fontSize: 15);


const kInputDecoration = InputDecoration(
  hintText: 'Enter a value.',
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Colors.black, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide:
    //email and password border
    BorderSide(color: Colors.black, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);


const kHintStyle = TextStyle(
    color: Colors.white
);
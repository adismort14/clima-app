import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

final kTextFieldStyle = InputDecoration(
  icon: Icon(
    Icons.location_city,
    size: 50.0,
  ),
  filled: true,
  fillColor: Color(0xFFFFFFFF),
  hintText: "Enter the city here",
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
);

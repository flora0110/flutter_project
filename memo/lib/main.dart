import 'package:flutter/material.dart';
import 'package:memo/pages/home.dart';
import 'package:memo/pages/input.dart';
//import 'package:memo/pages/choose_location.dart';
void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context) => Home(),
    '/input': (context) => Input(),
    //'/location':(context) => ChooseLocation(),
  },
));

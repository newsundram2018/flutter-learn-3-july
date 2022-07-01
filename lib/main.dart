import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_one/login_page.dart';


void main() {
  runApp(MaterialApp(
    title: "My App for API's",
    home: LoginPage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
  ));
}



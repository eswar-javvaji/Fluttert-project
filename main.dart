import 'package:flutter/material.dart';
import 'routes/home.dart';
import 'routes/register.dart';
import 'routes/login.dart';
import 'routes/app.dart';

//import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.light(),
    initialRoute: 'home',
    routes: {
      'home': (context) => Myhome(),
      'register': (context) => Register(),
      'login': (context) => Login(),
      'main body': (context) => Myapp1(),
    },
  ));
}

import 'package:flutter/material.dart';
import 'package:new_app/views/pages/auth/login.dart';
import 'package:new_app/views/pages/guide/guideOne.dart';
import 'package:new_app/views/pages/misi/misi.dart';
import 'package:new_app/views/pages/monitoring/monitoring.dart';
import 'package:new_app/views/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}


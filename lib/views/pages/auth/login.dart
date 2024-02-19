import 'dart:html';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:new_app/views/pages/auth/register.dart';
import 'package:new_app/views/pages/pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void _toHomepage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    final TapGestureRecognizer _tapGestureRecognizer = TapGestureRecognizer();
    _tapGestureRecognizer.onTap = () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => RegistPage()));
    };
    return Scaffold(
      body: Container(
        color: Colors.lightBlue[50],
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              height: 130,
              child: Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: Container(
                        child: Align(
                          alignment: Alignment.center,
                          child:
                              Image(image: AssetImage('images/logo-saga.png')),
                        ),
                      )),
                  Container(
                    height: 100,
                    width: 5,
                    color: Colors.white,
                  ),
                  Flexible(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: 2.5, bottom: 2.5),
                              child: Text(
                                'Slot',
                                style: TextStyle(
                                  color: Colors.lightBlue[100],
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: 2.5, bottom: 2.5),
                              child: Text(
                                'Addiction',
                                style: TextStyle(
                                  color: Colors.lightBlue[100],
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: 2.5, bottom: 2.5),
                              child: Text(
                                'Guard',
                                style: TextStyle(
                                  color: Colors.lightBlue[100],
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
            ),
            Expanded(
              child: Container(
                  padding: EdgeInsets.fromLTRB(30, 50, 30, 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.lightBlue[100],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            prefixIcon: Icon(Icons.person),
                            labelText: 'username'),
                      ),
                      SizedBox(height: 25),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          prefixIcon: Icon(Icons.lock),
                          labelText: 'password',
                        ),
                      ),
                      SizedBox(height: 25),
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: TextButton(
                          onPressed: _toHomepage,
                          child: Text(
                            'login',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.lightBlue[50],
                            primary: Colors.white,
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      Align(
                        alignment: Alignment.center,
                        child: Text.rich(
                          TextSpan(
                            text: 'Dont have an account? ',
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                  text: 'Sign up',
                                  style: TextStyle(
                                    color: Colors.lightBlue[300],
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: _tapGestureRecognizer),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

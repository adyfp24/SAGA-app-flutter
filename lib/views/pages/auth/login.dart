import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
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
                  Flexible(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.only(top: 2.5, bottom: 2.5),
                              child: Text(
                                'Slot',
                                style: TextStyle(
                                  color: Colors.lightBlue[300],
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.only(top: 2.5, bottom: 2.5),
                              child: Text(
                                'Addiction',
                                style: TextStyle(
                                  color: Colors.lightBlue[300],
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.only(top: 2.5, bottom: 2.5),
                              child: Text(
                                'Guard',
                                style: TextStyle(
                                  color: Colors.lightBlue[300],
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
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.lightBlue[100],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('login area'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

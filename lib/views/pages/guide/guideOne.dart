import 'package:flutter/material.dart';
import 'package:new_app/views/pages/guide/guideTwo.dart';

class GuideOnePage extends StatelessWidget {
  const GuideOnePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/guide1.png'))),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('images/robosaga.png'))),
          ),
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GuideTwoPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue[100],
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                ),
                child: Text(
                  'selanjutnya',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

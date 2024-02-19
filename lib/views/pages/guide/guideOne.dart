import 'package:flutter/material.dart';

class GuideOnePage extends StatelessWidget {
  const GuideOnePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              image: DecorationImage(image: AssetImage('images/guide1.png'))
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/robosaga.png'))
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: (){
                  
                },
                style: ElevatedButton.styleFrom(primary: Colors.lightBlue[100]),
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

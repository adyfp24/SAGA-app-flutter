import 'package:flutter/material.dart';

class MissionPage extends StatefulWidget {
  const MissionPage({Key key}) : super(key: key);

  @override
  State<MissionPage> createState() => _MissionPageState();
}

class _MissionPageState extends State<MissionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Text('misi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.lightBlue[100],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(35, 30, 35, 10),
            width: double.infinity,
            height: 75,
            child: Text(
              'ini adalah halaman misi, selesaikan semua misi untuk melawan adiksimu dan meningkatkan title mu menjadi seorang VETERAN, semangat!',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 150,
            child: InkWell(
              child: Image.asset('images/misi1.png'),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 150,
            child: InkWell(
              child: Image.asset('images/misi2.png'),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 150,
            child: InkWell(
              child: Image.asset('images/misi3.png'),
            ),
          )
        ],
      ),
    );
  }
}

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
      appBar: AppBar(title: Text('misi'),backgroundColor: Colors.lightBlue[100],),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            width: double.infinity,
            height: 100,
            color: Colors.amberAccent,
            child: Text('deskripsi misi'),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 150,
            color: Colors.amberAccent,
            child: Text('misi 1'),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 150,
            color: Colors.amberAccent,
            child: Text('misi 2'),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 150,
            color: Colors.amberAccent,
            child: Text('misi 3'),
          )
        ],
      ),
    );
  }
}

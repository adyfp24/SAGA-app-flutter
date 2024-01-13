import 'package:flutter/material.dart';

class DetailFitur extends StatelessWidget {
  const DetailFitur({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('appbar detail'), backgroundColor: Colors.black,),
      body: Center(
        child: Text('halo ini detail fitur'),
      ),
    );
  }
}
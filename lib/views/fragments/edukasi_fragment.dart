import 'package:flutter/material.dart';

class EdukasiFragment extends StatelessWidget {
  const EdukasiFragment({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('ini fragment edukasi'),
        Container(
          margin: EdgeInsets.only(top: 20),
          color: Colors.amber,
          width: 200,
          height: 200,
        )
      ],
    ));
  }
}
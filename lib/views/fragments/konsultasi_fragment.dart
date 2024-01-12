import 'package:flutter/material.dart';

class KonsultasiFragment extends StatefulWidget {
 
  const KonsultasiFragment({ Key key }) : super(key: key);

  @override
 
  State<KonsultasiFragment> createState
  () => _KonsultasiFragmentState();
}


class _KonsultasiFragmentState extends
 State<KonsultasiFragment> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('ini fragment konsultasi'),
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
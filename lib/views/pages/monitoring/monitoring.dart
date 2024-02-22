import 'package:flutter/material.dart';

class MonitoringPage extends StatefulWidget {
  const MonitoringPage({Key key}) : super(key: key);

  @override
  State<MonitoringPage> createState() => _MonitoringPageState();
}

class _MonitoringPageState extends State<MonitoringPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Monitoring',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlue[100],
      ),
      body: ListView(
        children: [
          Container(
            width: 200,
            height: 200,
            margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/indicator.png'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text.rich(
              TextSpan(
                  text: 'Tingkat kecanduan : ',
                  style: TextStyle(fontWeight: FontWeight.w100),
                  children: [
                    TextSpan(
                        text: 'sedang',
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Column(
              children: [
                ExpansionTile(
                  tilePadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  title: Text(
                    'Faktor penyebab kecanduan',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text(
                          'Berdasar hasil konsultasi pertama kamu dengan psikolog, penyebabmu mengalami kecanduan judi slot online ialah karena ajakan teman.'),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    'Jumlah sesi konsultasi',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Container(
                        child: Text(
                            'This is tile number 2 lorem ipsum dolor sit amet lalalalalalalalasndkxcnn'),
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    'Pengaturan keuangan',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text(
                          'This is tile number 2 lorem ipsum dolor sit amet lalalalalalalalasndkxcnn'),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    'Aktivitas / hobi pengalih adiksi',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text(
                          'Berdasar hasil konsultasi pertama dengan psikolog, kamu memiliki hobi bermain badminton yang dapat diilakukan secara rutin 3x seminggu sebagai aktivitas pengalih dari adiksi.'),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    'Motivasi mengatasi adiksi',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text(
                          'This is tile number 2 lorem ipsum dolor sit amet lalalalalalalalasndkxcnn'),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

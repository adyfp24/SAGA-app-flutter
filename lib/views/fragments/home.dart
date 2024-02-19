part of 'fragments.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 20, right: 10),
                        child: ClipOval(
                          child: Image.asset(
                            'images/profile-saga.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ady Firdaus',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Warrior - 20 tahun')
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: InkWell(
                          child: Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 10, bottom: 70),
                            child: Center(
                              child: Image.asset(
                                'images/livekonsul(1).png',
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Scaffold(
                                      appBar: AppBar(
                                        title: Text('konsultasi'),
                                      ),
                                      body: KonsultasiFragment(),
                                      ),
                                ));
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: InkWell(
                          child: Image.asset('images/mission.png'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MissionPage(),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(width: 30),
                      Flexible(
                        flex: 1,
                        child: Image.asset('images/monitoring.png'),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 45, bottom: 20),
                        child: Container(
                          child: Text(
                            'lorem ipsus dor sit amet',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('isi konten menyusul'),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 30,
                                  margin: EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlue[100],
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('isi konten menyusul'),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 30,
                                  margin: EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlue[100],
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('isi konten menyusul'),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 30,
                                  margin: EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlue[100],
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

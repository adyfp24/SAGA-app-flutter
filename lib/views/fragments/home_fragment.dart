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
                      width: 70,
                      height: 70,
                      margin: EdgeInsets.only(top: 20, right: 20),
                      child: ClipOval(
                        child: Image.network(
                          'https://avatars.githubusercontent.com/u/75353116?v=4',
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
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Pelajar - 20 tahun')
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue[100],
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                      ))
                    ],
                  ),
                ),
                Row(
                  children: [
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 10, 20),
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.lightBlue[100],
                          ),
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(10, 20, 0, 20),
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.lightBlue[100],
                          ),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 0, bottom: 20),
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
                            ))
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
                            ))
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
                            ))
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
      )),
    );
  }
}

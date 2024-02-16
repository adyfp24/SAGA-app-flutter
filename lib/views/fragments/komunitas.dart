part of 'fragments.dart';

class EdukasiFragment extends StatelessWidget {
  const EdukasiFragment({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage())),
            child: Text('ke halaman login')),
        Container(
          margin: EdgeInsets.only(top: 20),
          color: Colors.blue,
          width: 300,
          height: 200,
        )
      ],
    ));
  }
}

part of 'fragments.dart';

class NewsPaper extends StatefulWidget {
  const NewsPaper({ Key key }) : super(key: key);

  @override
  State<NewsPaper> createState() => _NewsPaperState();
}

class _NewsPaperState extends State<NewsPaper> {
  void fetchData() async{
    String _url = 'http://127.0.0.1:8000/api/topikpertanyaan';
    var response = await http.get(Uri.parse(_url));
    var data = response.body;
    List decodedData = json.decode(data);

    Map<String, dynamic> rilData = decodedData[2];
    setState(() {
    
    }); 
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('ini fragment newspaper', style: TextStyle(color: Colors.blue),)
        ],
      ),
    );
  }
}
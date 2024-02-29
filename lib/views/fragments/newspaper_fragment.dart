part of 'fragments.dart';

class NewsPaper extends StatefulWidget {
  const NewsPaper({Key key}) : super(key: key);

  @override
  State<NewsPaper> createState() => _NewsPaperState();
}

class _NewsPaperState extends State<NewsPaper> {
  Future<List<Podcast>> fetchPodcasts() async {
    final url = Uri.parse('https://dev-sirama.propertiideal.id/api/podcast');
    final response = await http.get(
      url,
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Content-Type": "application/json",
      },
    );
    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = json.decode(response.body)['data'];
      return jsonResponse.map((data) => Podcast.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load podcasts');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Podcast List'),
      ),
      body: FutureBuilder<List<Podcast>>(
        future: fetchPodcasts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Podcast> podcasts = snapshot.data;
            return ListView.builder(
              itemCount: podcasts.length,
              itemBuilder: (context, index) {
                Podcast podcast = podcasts[index];
                return ListTile(
                  title: Text('Judul: ${podcast.judulPodcast}'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5,),
                      Text('Link: ${podcast.linkPodcast}'),
                      SizedBox(height: 5,),
                      Text('Deskripsi: ${podcast.deskripsi}'),
                      SizedBox(height: 5,),
                      Text('Total Likes: ${podcast.totalLikes}'),
                      SizedBox(height: 5,),
                      Text('ID: ${podcast.idPodcast}'),
                      SizedBox(height: 5,),
                    ],
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

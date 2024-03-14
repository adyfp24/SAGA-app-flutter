part of 'fragments.dart';

class NewsPaper extends StatefulWidget {
  const NewsPaper({Key key}) : super(key: key);

  @override
  State<NewsPaper> createState() => _NewsPaperState();
}

class _NewsPaperState extends State<NewsPaper> {
  @override
  void initState() {
    super.initState();
    // Panggil method fetchPodcasts dari PodcastViewModel saat widget pertama kali di-load
    Provider.of<PodcastViewModel>(context, listen: false).fetchPodcasts();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PodcastViewModel>(
      builder: (context, model, _) {
        return Scaffold(
          body: model.isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: model.podcasts.length,
                  itemBuilder: (context, index) {
                    final podcast = model.podcasts[index];
                    return ListTile(
                      title: Text('Judul: ${podcast.judulPodcast}'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Text('Link: ${podcast.linkPodcast}'),
                          SizedBox(height: 5),
                          Text('Deskripsi: ${podcast.deskripsi}'),
                          SizedBox(height: 5),
                          Text('Total Likes: ${podcast.totalLikes}'),
                          SizedBox(height: 5),
                          Text('ID: ${podcast.idPodcast}'),
                          SizedBox(height: 5),
                        ],
                      ),
                    );
                  },
                ),
        );
      },
    );
  }
}
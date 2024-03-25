import 'dart:convert';

class Podcast {
  final int idPodcast;
  final String judulPodcast;
  final String linkPodcast;
  final String totalLikes;
  final String deskripsi;

  Podcast(this.idPodcast, this.judulPodcast, this.linkPodcast, this.totalLikes,
      this.deskripsi);

  factory Podcast.fromJson(Map<String, dynamic> json) {
    return Podcast(
      json["id_podcast"] as int,
      json["judul_podcast"] as String,
      json["link_podcast"] as String,
      json["total_likes"].toString(),
      json["deskripsi"] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        "id_podcast": idPodcast,
        "judulPodcast": judulPodcast,
        "linkPodcast": linkPodcast,
        "totalLikes": totalLikes,
        "deskripsi": deskripsi
      };
}

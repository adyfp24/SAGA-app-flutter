import 'dart:convert';

class Podcast {
  int idPodcast;
  String judulPodcast;
  String linkPodcast;
  String totalLikes;
  String deskripsi;

  Podcast(this.idPodcast, this.judulPodcast, this.linkPodcast, this.totalLikes, this.deskripsi);

  factory Podcast.fromJson(Map<String, dynamic> json) {
    return Podcast(
      json["id_podcast"],
      json["judul_podcast"],
      json["link_podcast"],
      json["total_likes"],
      json["deskripsi"],
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

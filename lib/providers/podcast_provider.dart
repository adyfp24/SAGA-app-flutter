import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:new_app/models/podcast.dart';

class PodcastViewModel extends ChangeNotifier {
  List<Podcast> _podcasts = [];
  List<Podcast> get podcasts => _podcasts;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> fetchPodcasts() async {
    _isLoading = true;
    notifyListeners();

    final url = Uri.parse('https://dev-sirama.propertiideal.id/api/podcast');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body)['data'];
      _podcasts = jsonResponse.map((data) => Podcast.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load podcasts');
    }

    _isLoading = false;
    notifyListeners();
  }
}

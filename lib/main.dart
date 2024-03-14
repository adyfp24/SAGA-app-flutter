import 'package:flutter/material.dart';
import 'package:new_app/views/fragments/fragments.dart';
import 'package:new_app/views/pages/pages.dart';
import 'package:provider/provider.dart';
import 'package:new_app/providers/podcast_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => PodcastViewModel()),
        ],
        child: HomePage(),
      ),
    );
  }
}


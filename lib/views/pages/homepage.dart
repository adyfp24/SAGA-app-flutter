import 'package:flutter/material.dart';
import 'package:new_app/views/fragments/home_fragment.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('homepage'),
    ),body: HomeFragment(),
    // bottomNavigationBar: BottomNavigationBar(items: items),
    );
  }
}

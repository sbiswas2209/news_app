

import 'package:flutter/material.dart';
import 'package:news_app/pages/feed_page.dart';
import 'package:news_app/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  final routes = <String , WidgetBuilder>{
    Home.tag : (context) => Home(),
    NewsFeedPage.tag : (context) => NewsFeedPage(null),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: routes,
    );
  }
}
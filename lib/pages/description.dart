import 'package:flutter/material.dart';
import 'package:news_app/pages/feed_page.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


void main() => runApp(DescriptionPage(null));

class DescriptionPage extends StatelessWidget {
  static String tag ='description-page';
  DescriptionPage(this.urlNews);
  final String urlNews;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Full Article',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.orange[800],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: WebviewScaffold(
          url: urlNews,
          ),
      ),
    );
  }
}
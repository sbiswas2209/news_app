import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/models/news.dart';
import 'package:news_app/pages/get_news.dart';
import 'package:news_app/pages/news_list.dart';

class NewsFeedPage extends StatelessWidget {


  static String tag = 'NewsFeedPage-tag';
  NewsFeedPage(this.text);
  final int text;

  @override
  Widget build(BuildContext context) {
    String title;
    if(text == 1){
      title = "Business";
    }
    else if(text == 2){
      title = "Bitcoin";
    }
    else if(text == 3){
      title = "Apple";
    }
    else if(text == 4){
      title = "TechCrunch";
    }
    else if(text == 5){
      title = "Wall Street Journal";
    }
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.orange[800],
        title: Text('$title headlines',
          style: TextStyle(color: Colors.black,),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.orange,
                child: GestureDetector(
                  child: FutureBuilder<List<News>>(
                    future: fetchNews(
                      http.Client(),
                      text
                    ),
                    builder: (context , snapshot){
                      if(snapshot.hasError){
                        return Container(
                          child: Text('An error has occured. Please re open the application.')
                        );
                      }
                      else{
                        return snapshot.hasData ? NewsList(news: snapshot.data) : Center(child: CircularProgressIndicator(),);
                      }
                    },
                    ),
                ),
              ),
            ),
          ],
        )
        ),
    );
  }
}
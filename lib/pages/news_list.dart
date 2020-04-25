import 'package:flutter/material.dart';
import 'package:news_app/models/news.dart';
import 'package:news_app/pages/description.dart';


class NewsList extends StatelessWidget {
  
  final List<News> news;

  NewsList({Key key , this.news}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: news.length,
      itemBuilder:(context , index){
        return Card(
          child: Container(
            color: Colors.orange[800],
            child: ListTile(
              
              leading: CircleAvatar(
                child:Icon(
                  Icons.star,
                  color: Colors.orange[800],
                ),
                backgroundColor: Colors.orange,
              ),
              title: Text(news[index].title),
              onTap: () {
                var url = news[index].url;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) => DescriptionPage(url))
                );
              },          
            ),
          ),
        );
      }
      
    );
  }
}
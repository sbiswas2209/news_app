import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/constants.dart';
import 'package:news_app/models/news.dart';
Future<List<News>> fetchNews( http.Client client , id ) async{
  String url;
  if(id == 1){
    url = Constant.base_url+
          "top-headlines?country=in&category=business&apiKey="+
          Constant.api_key;
  }
  else if(id == 2){
    url = Constant.base_url+
          "everything?q=bitcoin&sortBy=publishedAt&apiKey="+
          Constant.api_key;
  }
  else if(id == 3){
    url = Constant.base_url+
          "top-headlines?sources=techcrunch&apiKey="+
          Constant.api_key;
  }
  else if(id == 4){
    url = Constant.base_url+
          "everything?q=apple&from=2018-07-14&to=2018-07-14&sortBy=popularity&apiKey="+
          Constant.api_key; 
  }
  else if(id == 5){
    url = Constant.base_url+
          "everything?domains=wsj.com&apiKey="+
          Constant.api_key;
  }

  final response = await client.get(url);
  return compute(parsenews, response.body);

  }


  List<News> parsenews(String responseBody){
    final parsed = json.decode(responseBody);
    return (parsed['articles'] as List)
    .map<News>((json) => new News.fromJson(json))
    .toList();
  }

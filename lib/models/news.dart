class News{
  String author;
  String title;
  String description;
  String url;

  News({this.author , this.title , this.description , this.url});

  factory News.fromJson(Map<String , dynamic> json){
    return News(
      author: json['author'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
    );
  }

}
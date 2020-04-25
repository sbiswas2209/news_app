import 'package:flutter/material.dart';
import 'package:news_app/Images/images.dart';
import 'package:news_app/pages/feed_page.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  

  static String tag = 'home-page';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor : Colors.orange[800],
        title: Text("Hello there! Let\'s get you all caught up.",
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
          ),
        ),
        
      ),
      body: CustomScrollView(
        primary:false,
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: <Widget>[
                GestureDetector(
                  child: Card(
                    
                    elevation: 3.0,
                    //padding: EdgeInsets.all(8),
                    
                    color : Colors.orange[800],
                    child: Column(
                      children: <Widget>[
                        Image(
                          image: NetworkImage(Images.business),
                        ),
                         SizedBox(
                           height: 30,
                         ),
                        Text('BUSINESS',
                          style: TextStyle(
                            //backgroundColor: Colors.orange[600],
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0,
                            ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    var id=1;
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => NewsFeedPage(id),
                      ));
                  },
                ),
                GestureDetector(
                  child: Card(
                    elevation: 3.0,
                    //padding: EdgeInsets.all(8),
                    color : Colors.orange[800],
                    child: Column(
                      children: <Widget>[
                        Image(
                          height: 90,
                          width: 200,
                          image: NetworkImage(Images.bitcoin),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text('BITCOIN',
                          style: TextStyle(
                            //backgroundColor: Colors.orange[600],
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0,
                            ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    var id=2;
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => NewsFeedPage(id),
                      ));
                  },
                ),
                GestureDetector(
                  child: Card(
                    elevation: 3.0,
                    //padding: EdgeInsets.all(8),
                    color : Colors.orange[800],
                    child: Column(
                      children: <Widget>[
                        Image(
                          height: 100,
                          image: NetworkImage(Images.apple),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text('APPLE',
                          style: TextStyle(
                            //backgroundColor: Colors.orange[600],
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0,
                            ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    var id=3;
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => NewsFeedPage(id),
                      ));
                  },
                ),
                
                GestureDetector(
                  child: Card(
                    elevation: 3.0,
                    //padding: EdgeInsets.all(8),
                    color : Colors.orange[800],
                    child: Column(
                      children: <Widget>[
                        Image(
                          height: 100,
                          image: NetworkImage(Images.tech_crunch),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text('TECH CRUNCH',
                          style: TextStyle(
                            //backgroundColor: Colors.orange[600],
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0,
                            ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    var id=4;
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => NewsFeedPage(id),
                      ));
                  },
                ),
                
                GestureDetector(
                  child: Card(
                    elevation: 3.0,
                    //padding: EdgeInsets.all(8),
                    color : Colors.orange[800],
                    child: Column(
                      children: <Widget>[
                        Image(
                          height: 100,
                          image: NetworkImage(Images.wsj),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text('WSJ',
                          style: TextStyle(
                            
                            //backgroundColor: Colors.orange[600],
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0,
                            ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    var id=5;
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => NewsFeedPage(id),
                      ));
                  },
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
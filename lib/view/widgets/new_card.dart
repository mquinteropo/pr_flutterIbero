import 'package:app1/models/news.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final News news;

  const NewsCard({Key key, this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 10, right: 10, left: 10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(7.0),
                  child: Image.network(
                    news.image,
                    width: 350
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:10, right: 11, left: 11),
            padding: EdgeInsets.only(bottom: 10),
            child: Column(
              children: [
                Container(
                    alignment: Alignment.topLeft,
                  child: Text(
                    news.title,
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child:
                        Text(
                            news.author,
                            style: TextStyle(
                                color: Colors.grey,
                              fontSize: 16
                            )
                        )
                ),
                Container(
                  margin: EdgeInsets.only(top: 12, bottom: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child:
                    Text(
                        news.description,
                        style: TextStyle(
                            fontSize: 16
                        )
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.favorite_border,
                    color: Colors.grey,),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child:Text("Más >",
                      style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 16
                      ),) ,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

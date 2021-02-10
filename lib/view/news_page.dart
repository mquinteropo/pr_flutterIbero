import 'package:app1/data/news_repository.dart';
import 'package:app1/util/styles.dart';
import 'package:app1/view/widgets/new_card.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        title: Text(
          'Outsourcing S.A',
          style: TextStyle(color: Colors.grey),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.favorite),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.network("https://whatsos.com.co:8023/Img/logo-navbar.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(
                "> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                style: Styles.drawerOptionStyle,),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(
                "> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                style: Styles.drawerOptionStyle,),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(
                "> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                style: Styles.drawerOptionStyle,),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(
                "> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                style: Styles.drawerOptionStyle,),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(
                "> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                style: Styles.drawerOptionStyle,),
            )
          ],
        ),
      ),
      body: ListView(
        children: NewsRepository()
        .NEWS
        .map((news) => NewsCard(
          news: news,
        )).toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

// 新闻页面
class NewsPage extends StatefulWidget {
  NewsPage({Key key,this.title}) : super(key: key);
  final String title;
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("NewsPage"),
      ),
    );
  }
}

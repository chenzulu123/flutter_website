import 'package:flutter/material.dart';

// 关于我们页面
class AboutUsPage extends StatefulWidget {
  AboutUsPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('AboutUsPage'),
      ),
    );
  }
}

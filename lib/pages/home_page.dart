import 'package:flutter/material.dart';
import '../widget/home_banner.dart';
import '../widget/product_list.dart';

// 主页面
class HomePage extends StatefulWidget {
  HomePage({Key key,this.title}) : super(key: key);

  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          HomeBanner(),
          ProductList()
        ],
      ),
    );
  }
}

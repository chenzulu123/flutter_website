import 'package:flutter/material.dart';

// 产品页面
class ProductPage extends StatefulWidget {
  ProductPage({Key key,this.title}) : super(key: key);
  final String title;
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("ProductPage"),
      ),
    );
  }
}

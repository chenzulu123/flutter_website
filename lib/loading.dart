import 'package:flutter/material.dart';
import './app.dart';

// 页面加载页
class LoadingPage extends StatefulWidget {
  LoadingPage({Key key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  // 数据初始化的方法
  @override
  void initState() {
    super.initState();

    //在页面停顿3秒
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => App()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image.asset(
          'assets/images/loading.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

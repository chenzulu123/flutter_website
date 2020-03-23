import 'package:flutter/material.dart';

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
      print("启动页面");
      Navigator.of(context).pushReplacementNamed("app");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Stack(
          children: <Widget>[
            Image.asset(
              'assets/images/loading.jpg',
              fit: BoxFit.cover,
            ),
            Center(
              child: Text('Flutter启动页',
                  style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      //去除文字边线
                      decoration: TextDecoration.none)),
            ),
          ],
        ),
      ),
    );
  }
}
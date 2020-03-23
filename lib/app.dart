import 'package:flutter/material.dart';

// 导入相关页面
import 'pages/about_us_page.dart';
import 'pages/home_page.dart';
import 'pages/news_page.dart';
import 'pages/product_page.dart';

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  var _currentIndex = 0;
  HomePage homePage;
  ProductPage productPage;
  NewsPage newsPage;
  AboutUsPage aboutUsPage;

  currentPage() {
    switch (_currentIndex) {
      case 0:
        if (homePage == null) {
          homePage = HomePage(title: "主页",);
        }
        print(homePage.title);
        return homePage;
      case 1:
        if (productPage == null) {
          productPage = ProductPage(title: "产品",);
        }
        return productPage;
      case 2:
        if (newsPage == null) {
          newsPage = NewsPage(title: "新闻",);
        }
        return newsPage;
      case 3:
        if (aboutUsPage == null) {
          aboutUsPage = AboutUsPage(title: "关于我们",);
        }
        return aboutUsPage;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //标题内容
        title: Text(currentPage().title),
        //标题居中
        centerTitle: true,
        //添加按钮图标
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {},
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.search),
            ),
          )
        ],
      ),
      // 中间部分内容
      body: currentPage(),
      // 底部按钮
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(title: Text("首页"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text("产品"), icon: Icon(Icons.apps)),
          BottomNavigationBarItem(title: Text("新闻"), icon: Icon(Icons.list)),
          BottomNavigationBarItem(
              title: Text("关于我们"), icon: Icon(Icons.insert_chart)),
        ],
        //按钮固定类型
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          print(index);
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import 'app.dart';
import 'loading.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter企业实战',
      // 自定义主题
      theme: mDefaultTheme,
//      initialRoute: '/app',
      routes: <String, WidgetBuilder>{
        "app": (BuildContext context) => App(),
        "company_info": (BuildContext context) => WebviewScaffold(
              appBar: AppBar(
                title: Text('公司介绍'),
                centerTitle: true,
                leading: IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    // 路由到主界面
                    Navigator.of(context).pushReplacementNamed('app');
                  },
                ),
              ),
              url: 'https://www.baidu.com',
            ),
      },
      //指定加载页面
      home: LoadingPage(),
    ));

// 自定义主题
final ThemeData mDefaultTheme = ThemeData(primaryColor: Colors.yellow);

import 'package:flutter/material.dart';
import '../model/product.dart';
import '../utils/utils.dart';
import '../pages/product_detail.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 获取设备的宽度
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      // 设置背景颜色
      color: Colors.white,
      //设置设备的宽度
      width: deviceWidth,
      // 设置内边距
      padding: EdgeInsets.all(8),
      child: _build(context, deviceWidth),
    );
  }

  Widget _build(BuildContext context, double deviceWidth) {
    double itemWidth = deviceWidth * 165.5 / 360;
    //颜色转换
    var bgColor = hexToColor('#E0E0E0');
    List<Widget> listWidgets = posts.map((item) {
      return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductDetail(post: item)));
          },
          child: Container(
            // width: itemWidth,
            margin: EdgeInsets.only(bottom: 16),
            padding: EdgeInsets.all(10),
            color: bgColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  item.title,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.title,
                  // 超出隐藏
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  item.author,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.subhead,
                  // 超出隐藏
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  alignment: Alignment(0, 0),
                  margin: EdgeInsets.only(top: 5),
                  child: Image.network(
                    item.imgUrl,
                    // width: imgmWidth,
                  ),
                ),
              ],
            ),
          ));
    }).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(5),
          child: Text(
            '最新产品',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Wrap(
          spacing: 2,
          children: listWidgets,
        ),
      ],
    );
  }
}

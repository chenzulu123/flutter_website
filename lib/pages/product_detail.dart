import 'package:flutter/material.dart';
import '../model/product.dart';

class ProductDetail extends StatelessWidget {
  final Post post;
  const ProductDetail({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 标题居中
        centerTitle: true,
        title: Text('${post.title}'),
      ),
      body: Column(
        children: <Widget>[
          Image.network(post.imgUrl),
          Container(
            padding: EdgeInsets.all(32),
            width: double.infinity,
            //行
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(post.title, style: Theme.of(context).textTheme.title),
              Text(post.author, style: Theme.of(context).textTheme.subhead),
              SizedBox(height: 10),
              Text(post.des, style: Theme.of(context).textTheme.body1)
            ]),
          ),
        ],
      ),
    );
  }
}

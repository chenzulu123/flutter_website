import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeBanner extends StatelessWidget {

  List<String> banners = <String>[
    "assets/images/banners/1.jpg",
    "assets/images/banners/2.jpg",
    "assets/images/banners/3.jpg",
    "assets/images/banners/4.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = width * 540 / 1080;
    return Container(
      width: width,
      height: height,
      child: Swiper(
        itemCount: banners.length,
        //轮播的方向
        scrollDirection: Axis.horizontal,
        // 是否自动播放
        autoplay: true,
        itemBuilder: (BuildContext content, index){
          return Container(
            margin: EdgeInsets.all(4),
            child: Image.asset(
              banners[index],
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sabak29_news_app_5/constants/api_const.dart';
import 'package:sabak29_news_app_5/model/article.dart';
import 'package:sabak29_news_app_5/theme/app_colors.dart';
import 'package:sabak29_news_app_5/theme/sized.dart';
import 'package:sabak29_news_app_5/view/detail_view.dart';

class CardNews extends StatelessWidget {
  const CardNews({
    super.key,
    required this.news,
  });

  final Article news;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailView(
              article: news,
            ),
          ),
        );
      },
      child: Card(
        color: AppColors.cardColors,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: CachedNetworkImage(
                imageUrl: news.urlToImage ?? ApiConst.newsImage,
                placeholder: (context, url) =>
                    // const CircularProgressIndicator(),
                    Image.asset('assets/newsImage2.png'),
                errorWidget: (context, url, error) =>
                    Image.asset('assets/errorimages.jpg'),
              ),
              // Image.network(
              //     news.urlToImage ?? ApiConst.newsImage),
            ),
            Sized.width5,
            Expanded(
              flex: 5,
              child: Text(news.title),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:sabak26_news_app_2/model/article.dart';

class TopNews {
  TopNews(
      {required this.status, required this.totalResult, required this.article});
  final String status;
  final int totalResult;
  final List<Article> article;
  factory TopNews.fromJson(Map<String, dynamic> json) {
    return TopNews(
      status: json['status'],
      totalResult: json['totalResult'],
      article: List<Article>.from(
          (json['articles']).map((e) => Article.fromJson(e))),
    );
  }
}

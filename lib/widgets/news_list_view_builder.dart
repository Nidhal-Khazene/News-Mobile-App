import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:news_app/models/article_model.dart';

import '../services/news_service.dart';
import 'news_tile_listview_builder.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category;
  const NewsListViewBuilder({super.key, required this.category});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService(dio: Dio()).getTopHeadlines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Center(child: Text("Oops there was an error, try again.")),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: LoadingIndicator(
                indicatorType: Indicator.orbit,
                colors: [Colors.orange, Colors.orangeAccent],
                strokeWidth: 1,
                backgroundColor: Colors.transparent,
                pathBackgroundColor: Colors.black,
              ),
            ),
          );
        }
      },
    );
  }
}

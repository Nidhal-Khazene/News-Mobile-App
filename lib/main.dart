import 'package:flutter/material.dart';
import 'package:news_app/views/news_app_screen.dart';

void main() {
  // NewsService(dio: Dio()).getNews();
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: NewsApp());
  }
}

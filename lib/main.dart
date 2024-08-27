import 'package:daily_scope/screens/home_page.dart';
import 'package:daily_scope/services/news_services.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
NewsServices(dio: Dio()).getNews();

  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


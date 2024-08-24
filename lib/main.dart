import 'package:daily_scope/screens/home_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
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

final dio = Dio();
void getHttp() async {
  final response = await dio.get('https://newsapi.org/v2/everything?q=Apple&apiKey=8739d2128ad74ac18056c9c64275d2da');
  print(response);
}
import 'package:dio/dio.dart';

class NewsServices {
  final Dio  dio;

  NewsServices({required this.dio});

  getNews() async
   {
    var  response = await dio.get("https://newsapi.org/v2/top-headlines?country=eg&apiKey=8739d2128ad74ac18056c9c64275d2da&category=general");
     Map <String,dynamic> jsonData= response.data;
print(jsonData);
  }
  

}
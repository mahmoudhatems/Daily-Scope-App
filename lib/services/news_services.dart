import 'package:dio/dio.dart';

class NewsServices {
  final Dio  dio;

  NewsServices({required this.dio});
  
  
void getGeneralNews() async {
  final response = await dio.get('https://newsapi.org/v2/everything?q=Apple&apiKey=8739d2128ad74ac18056c9c64275d2da');
  print(response);
}
void getSportsNews() async {
  final response = await dio.get('https://newsapi.org/v2/everything?q=Apple&apiKey=8739d2128ad74ac18056c9c64275d2da');
  print(response);
}

}
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_flash/constants/api_constants.dart';
import 'package:news_flash/models/NewsModel.dart';

// https://newsapi.org/v2/top-headlines?country=us&category=business

class AppService {

  static Future<List<Articles>> fetchHeadLines() async{
    try {
      final url = '${ApiConstants.base_url}?country=us&category=business&apiKey=${ApiConstants.api_key}';
      final response = await http.get(Uri.parse(url));

      if(response.statusCode == 200){
        final data = jsonDecode(response.body);
        final List article = data['articles'];
        return article.map((e) => Articles.fromJson(e)).toList();
      }else {
        print('Failed to fetch headlines error is ${response.statusCode}');

      }
    }catch(e) {
      print('Error occurred $e}');
    }
    return [];
  }

  static Future<List<Articles>> fetchNews(String title) async {
    try {
      final url = '${ApiConstants.base_url}?country=us&category=$title&apiKey=${ApiConstants.api_key}';
      final response = await http.get(Uri.parse(url));

      if(response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final List article = data['articles'];
        return article.map((e)=> Articles.fromJson(e)).toList();
      }else {
        print('failed to fetch data');
      }
    }catch(e) {
      print('Error occurred $e}');
    }
    return [];
  }
}
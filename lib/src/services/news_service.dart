import 'package:flutter/material.dart';
import 'package:newsprovider/src/models/news_models.dart';
import 'package:http/http.dart' as http;

final _URL_NEWS ="https://newsapi.org/v2";
final _APIKEY   ="a2e24fa68bab47f690a933dafa6ee1b2"; //d7644d669ea94eaba9111c823913c545

class NewsService with ChangeNotifier{

List<Article> headlines =[];
String category;
//Constructor
NewsService({required this.category});

getTopHeadlines(String category)async{
final url  =  "$_URL_NEWS/top-headlines?country=co&category=$category&apiKey=$_APIKEY";
//final url   = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=a2e24fa68bab47f690a933dafa6ee1b2";
//final url = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=d7644d669ea94eaba9111c823913c545";
final resp = await http.get(Uri.parse(url)); 


final newResponse = newsResponseFromJson(resp.body);
this.headlines.addAll(newResponse.articles);
notifyListeners();
}

}
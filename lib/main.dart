import 'package:flutter/material.dart';
import 'package:newsprovider/src/models/news_models.dart';
import 'package:newsprovider/src/pages/news_page.dart';
import 'package:newsprovider/src/services/news_service.dart';
import 'package:newsprovider/src/theme/darktheme.dart';
import 'package:newsprovider/src/theme/lighttheme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:  NewsPage(), 
      theme: DarkTheme//DarkTheme,
       );
  }
}




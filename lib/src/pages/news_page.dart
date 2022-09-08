import 'package:flutter/material.dart';
import 'package:newsprovider/src/pages/content_page.dart';
import 'package:newsprovider/src/services/news_service.dart';
import 'package:newsprovider/src/widgets/appbar.dart';
import 'package:provider/provider.dart';

class NewsPage extends StatelessWidget {
   
  const NewsPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 7,
      child: Scaffold(
        appBar: appbar,
        body:  TabBarView(
          children: <Widget>[
            Center(
              child: ChangeNotifierProvider(create: (BuildContext context) =>NewsService(category: "Business"),
              child: ContentPage()),
            ),
            Center(
              child: ChangeNotifierProvider(create: (BuildContext context) =>NewsService(category: "Entertainment") ,
              child: ContentPage()),
            ),
            Center(
              child: ChangeNotifierProvider(create: (BuildContext context) =>NewsService(category: "General"),
              child: ContentPage()),
            ),
             Center(
              child: ChangeNotifierProvider(create: (BuildContext context) =>NewsService(category: "Health"),
              child: ContentPage()),
            ),
            Center(
              child: ChangeNotifierProvider(create: (BuildContext context) =>NewsService(category: "Science"),
              child: ContentPage()),
            ),
            Center(
              child: ChangeNotifierProvider(create: (BuildContext context) =>NewsService(category: "Sports"),
              child: ContentPage()),
            ),
            Center(
              child: ChangeNotifierProvider(create: (BuildContext context) =>NewsService(category: "Technology"),
              child: ContentPage()),
            ),
          ],
        ),
      
      ),
    );
  }
}



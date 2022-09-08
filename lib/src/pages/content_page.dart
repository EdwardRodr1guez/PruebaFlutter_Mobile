import 'package:flutter/material.dart';
import 'package:newsprovider/src/services/news_service.dart';
import 'package:newsprovider/src/widgets/lista_noticias.dart';
import 'package:provider/provider.dart';

class ContentPage extends StatefulWidget {
   
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {

    final newsService = Provider.of<NewsService>(context); //llamar al provider de noticias
    newsService.getTopHeadlines(newsService.category);     //escuchar el category

    return  Scaffold(
      body: (newsService.headlines.length==0)              //Verificar condicion de noticias disponibles
          ? Center(child: CircularProgressIndicator())     //no: mostrar barra "cargando" 
          : ListaNoticias(newsService.headlines)           //si: mostrar noticias (listview)
      
      );
      
    
  }
  
  @override
  
  bool get wantKeepAlive => true;
}
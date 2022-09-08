import 'package:flutter/material.dart';
import 'package:newsprovider/src/models/news_models.dart';
import 'package:newsprovider/src/theme/darktheme.dart';

class ListaNoticias extends StatelessWidget {
  
  

  ListaNoticias(this.noticias); //argumento requerido

  List<Article> noticias;
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.noticias.length,
      itemBuilder: (BuildContext context, int index){
        return _Noticia(noticia: this.noticias[index], index: index);
      } );
  }
}




class _Noticia extends StatelessWidget {
  
  final Article noticia;
  final int index;

  const _Noticia({super.key, required this.noticia, required this.index});
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _TarjetaTopBar (noticia: noticia,index: index),
          _TarjetaTitulo (noticia: noticia),
          _TarjetaImagen (noticia: noticia),
          _TarjetaBody   (noticia: noticia),
          _TarjetaBotones(),
          SizedBox(height: 10),
          Divider()

        ],
      ),
    );
  }
}

class _TarjetaBotones extends StatelessWidget {
  const _TarjetaBotones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

            RawMaterialButton(
              onPressed: (){},
              fillColor: DarkTheme.colorScheme.secondary,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Icon(Icons.star_border),),

            SizedBox(width: 10,),

            RawMaterialButton(
              onPressed: (){},
              fillColor: DarkTheme.colorScheme.secondary,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Icon(Icons.more),)

        ],
      ),
    );
  }
}


class _TarjetaTopBar extends StatelessWidget {
  final Article noticia;
  final int index;
  const _TarjetaTopBar({super.key, required this.noticia, required this.index});

  
  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.symmetric(horizontal: 10),
       margin: EdgeInsets.only(bottom: 10),
       child: Row(
        children: [
          Text("${index+1}", style:TextStyle(color: DarkTheme.colorScheme.secondary )),
          Text("${noticia.source.name}")
       
        ],
       ),
    );
  }
}




class _TarjetaTitulo extends StatelessWidget {
  final Article noticia;
  
  const _TarjetaTitulo({super.key, required this.noticia});

  
  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.symmetric(horizontal: 15),
       child: Text(noticia.title, style: TextStyle(fontSize:20, fontWeight: FontWeight.w700))
    );
  }
}

class _TarjetaImagen extends StatelessWidget {
  final Article noticia;
  
  const _TarjetaImagen({super.key, required this.noticia});

  
  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
        child: Container(
           
            child: (noticia.urlToImage != null)
              ? FadeInImage(
                placeholder: AssetImage('assets/img/giphy.gif') ,
                image: NetworkImage(noticia.urlToImage!))
      
              : Image(image: AssetImage('assets/img/no-image.png'),)
      
            ),
      ),
    );
  }
}


class _TarjetaBody extends StatelessWidget {
  final Article noticia;
  
  const _TarjetaBody({super.key, required this.noticia});
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text((noticia.description !=null) ? noticia.description! : "" ),
    );
  }
}
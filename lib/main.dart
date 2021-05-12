import 'package:flutter/material.dart';

void main() => runApp(MiTarjetaApp());

class MiTarjetaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Tarjetas de Feny'),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
            ], //Fin Widget[]
          ),
          body: Container(
            child: ListView(
              children: <Widget>[
                _items("https://raw.githubusercontent.com/GersonEfren/Listado_Imagenes/master/images/image01.JPG","Teclado"),
                  SizedBox(height: 5.0),
                   _items("https://raw.githubusercontent.com/GersonEfren/Listado_Imagenes/master/images/ram.png","Ram"),
                  SizedBox(height: 5.0),
                   _items("https://raw.githubusercontent.com/GersonEfren/Listado_Imagenes/master/images/ordenador-portatil.png","Laptop"),
                  SizedBox(height: 5.0),
                  _items("https://raw.githubusercontent.com/GersonEfren/Listado_Imagenes/master/images/camara-fotografica.png","Camara"),
                  SizedBox(height: 5.0),
              ],//Fin Widget[]
            ),
            
            ),//Fin Container
        ));  //Fin de MaterialApp  
  } //Fin de Widget
  
   Widget _items(String url, String producto) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.amberAccent,
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyanAccent,
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text('SSD de 256 GB en buen estado',
                      style: TextStyle(fontSize: 9.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
} //Fin de MiTarjetaApp
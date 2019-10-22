import 'package:carousel_pro/carousel_pro.dart';
import 'package:fitc/sedes_header.dart';
import 'package:fitc/sedes_grid.dart';
import 'package:fitc/sedes_armas.dart';
import 'package:fitc/sedes_auza.dart';
import 'package:fitc/sedes_bicentenario.dart';
import 'package:fitc/sedes_goitia.dart';
import 'package:fitc/sedes_intervenciones.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title:'FITC',
  home: Homepage(),
));

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
  ImageProvider header = AssetImage("assets/images/header.jpg");
}

class _HomepageState extends State<Homepage> {
  ImageProvider header = AssetImage("assets/images/header.jpg");
  //ImageProvider header = AssetImage("assets/images/header.jpg");
  final lista_sedes = [
    {"nombre":"academico","pic":"assets/images/academico.png"},
    {"nombre":"armas","pic":"assets/images/armas.png"},
    {"nombre":"auza","pic":"assets/images/auza.png"},
    {"nombre":"bicentenario","pic":"assets/images/bicentenario.png"},
    {"nombre":"goitia","pic":"assets/images/goitia.png"},
    {"nombre":"intervenciones","pic":"assets/images/intervenciones.png"}
  ];  
  
  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    precacheImage(AssetImage("assets/images/header.jpg"), context);
    Widget image_slider_carousel = Container(
      height: 210,
      width:  screenW,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/art1.jpg'),
          AssetImage('assets/images/art2.jpg'),
          AssetImage('assets/images/art3.jpg'),
          AssetImage('assets/images/art4.jpg'),
          AssetImage('assets/images/art5.jpg'),
          AssetImage('assets/images/art6.jpg'),
          AssetImage('assets/images/art7.jpg'),
          AssetImage('assets/images/art8.jpg'),
          AssetImage('assets/images/art9.jpg'),
        ],
        autoplay: true,
        animationDuration: Duration(milliseconds: 1000),
        indicatorBgPadding: 1.0,
        animationCurve: Curves.ease,
        dotSize: 6.0,
        dotBgColor: Color.fromRGBO(227, 4, 123, 100),
      ),
    );
    return Scaffold(
      body: CustomScrollView (
        slivers: <Widget>[
          SliverAppBar(
            //title: Text('FITC', style: TextStyle(color: Color.fromRGBO(227, 4, 123, 1.0))),
            pinned: true,
            backgroundColor: Color.fromRGBO(255, 236, 0, 1.0),
            expandedHeight: 110,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Image.asset('assets/images/header.jpg', fit: BoxFit.contain,),
            ),
          ),
          SliverList( //carousel
            delegate: SliverChildListDelegate(
              <Widget>[
                image_slider_carousel,
              ]
            )
          ),
          SedesHeader(), //header sedes
          SliverGrid( //grid de iconos
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              //crossAxisSpacing: 200.0,
            ),   
            delegate: SliverChildBuilderDelegate ( 
              (BuildContext context, int index)
              {
                return Container (
                  color: Color.fromRGBO(229, 0, 126, 1.0),
                  child: Sede(nombre_sede: lista_sedes[index]["nombre"],
                  imagen_sede: lista_sedes[index]["pic"],),
                );
              },  
              childCount: 6,
            ),
          )
        ],
      )
    );
  }
}

class Sede extends StatelessWidget {
  final nombre_sede;
  final imagen_sede;
  Sede({this.nombre_sede,this.imagen_sede});
  @override
  Widget build(BuildContext context) {
    return Card(
      //color: Color.fromRGBO(253, 130, 4, 1.0),
      child: new Container (
        //color: Color.fromRGBO(229, 0, 126, 1.0),
        child: Hero(
        tag: nombre_sede,
        child: Material(
          color: Color.fromRGBO(229, 0, 126,1.0), //color fondo
          child: InkWell
          (
            splashColor: Color.fromRGBO(208, 54, 156, 1.0),
            onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context)=> new Detail(nombre_sede,imagen_sede),
            )),
            child: GridTile
            (
              child: Image.asset(imagen_sede, fit: BoxFit.contain, )
            )
          )
          
        )
      )
      ),
    );
  }
}

class Detail extends StatelessWidget {
  String nombre_sede;
  final imagen_sede;

  Detail(this.nombre_sede,this.imagen_sede);
  @override
  Widget build(BuildContext context) {

    if (nombre_sede=="academico") 
    {
      return Academico();
    }
    else if (nombre_sede=="armas")
    {
      return Armas();
    }
    else if (nombre_sede=="auza")
    {
      return Auza();
    }
    else if (nombre_sede=="bicentenario")
    {
      return Bicentenario();
    }
    else if (nombre_sede=="goitia")
    {
      return Goitia();
    }
    else if (nombre_sede=="intervenciones")
    {
      return Intervenciones();
    }
  }
}


import 'package:flutter/material.dart';
import 'package:fitc/map_interv.dart';

class Intervenciones extends StatefulWidget {
  @override
  _IntervencionesState createState() => _IntervencionesState();
}

class _IntervencionesState extends State<Intervenciones>
{

  final lista_inter = [
    {"nombre":"1","pic":"assets/images/intervenciones_urbanas_1.jpg"},
    {"nombre":"2","pic":"assets/images/intervenciones_urbanas_2.jpg"},
    {"nombre":"3","pic":"assets/images/intervenciones_urbanas_3.jpg"},
  ];

  Icon locationicon = new Icon(Icons.location_on, color: Color.fromRGBO(255, 236, 0, 1.0),);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemw = size.width;
    final double itemh = size.height;
    return Scaffold
    (
      
      backgroundColor: Color.fromRGBO(255, 236, 0, 1.0),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 180,
            pinned: true,
            backgroundColor: Color.fromRGBO(229, 0, 126, 1.0),
           // Image.asset("assets/images/pgoitia.jpg", fit: BoxFit.cover),
            actions: <Widget>[
              new IconButton(
                icon: locationicon,
                iconSize: 40.0,
                splashColor: Colors.black,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Inter2()));
                },
              )
            ],
            flexibleSpace: new FlexibleSpaceBar(
              title: Text("Intervenciones urbanas"),
              background: Image.asset("assets/images/mauza.jpg", fit: BoxFit.cover,),
              centerTitle: true,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: const Radius.circular(50.0))
            ),
          ),
          SliverGrid( 
            //grid de iconos
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              //crossAxisSpacing: 200.0,
              childAspectRatio: itemh/400,
              
            ),   
            delegate: SliverChildBuilderDelegate ( 
              (BuildContext context, int index)
              {
                return Container (
                  margin: EdgeInsets.all(8.0),
                  color: Color.fromRGBO(229, 0, 126, 1.0),
                  child: Sede(nombre_sede: lista_inter[index]["nombre"],
                  imagen_sede: lista_inter[index]["pic"],),
                );
              },  
              childCount: 3,
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
    double screenH = MediaQuery.of(context).size.height;
    return Container(
      //height: 0.0,
      child: Hero(
        tag: nombre_sede,
        child: Material(
          //color: Color.fromRGBO(229, 0, 126,1.0), //color fondo
          child: InkWell
          (
            splashColor: Color.fromRGBO(208, 54, 156, 1.0),
            child: GridTile
            ( 
              child: Container(
                //height: 0.0,
                color: Color.fromRGBO(255, 236, 0, 1.0),
                child: Image.asset(imagen_sede, fit: BoxFit.contain, ),
              ),
              //child: Image.asset(imagen_sede, fit: BoxFit.fill, )
            )
          )
          
        )
      )
    );
  }
}
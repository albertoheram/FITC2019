import 'package:flutter/material.dart';
import 'package:fitc/map_armas.dart';

class Armas extends StatefulWidget {
  @override
  _ArmasState createState() => _ArmasState();
}

class _ArmasState extends State<Armas> {


  final lista_parmas = [
    {"nombre":"1","pic":"assets/images/plaza_armas_1.jpg"},
    {"nombre":"2","pic":"assets/images/plaza_armas_2.jpg"},
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Armas2()));
                },
              )
            ],
            flexibleSpace: new FlexibleSpaceBar(
              title: Text("Plaza de armas"),
              background: Image.asset("assets/images/plazaarmas.jpg", fit: BoxFit.cover,),
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
                  child: Sede(nombre_sede: lista_parmas[index]["nombre"],
                  imagen_sede: lista_parmas[index]["pic"],),
                );
              },  
              childCount: 2,
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
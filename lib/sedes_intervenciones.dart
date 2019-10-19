import 'package:flutter/material.dart';
//import 'package:carousel_slider/carousel_slider.dart';

class Intervenciones extends StatefulWidget {
  @override
  _IntervencionesState createState() => _IntervencionesState();
}

class _IntervencionesState extends State<Intervenciones>
{
Widget _widget1 (Color color, String text)
{
  return Container (
      //color: Color.fromRGBO(255, 236, 0, 1.0),
      decoration: new BoxDecoration(
        color: Color.fromRGBO(255, 236, 0, 1.0),
        image: DecorationImage(
          image: new AssetImage(
            'assets/images/intervenciones_urbanas_1.jpg' //imagen sedes
          ),
          fit: BoxFit.contain,
        )
      ),
    );
}

Widget _widget2 (Color color, String text)
{
  return Container (
      //color: Color.fromRGBO(255, 236, 0, 1.0),
      decoration: new BoxDecoration(
        color: Color.fromRGBO(255, 236, 0, 1.0),
        image: DecorationImage(
          image: new AssetImage(
            'assets/images/intervenciones_urbanas_2.jpg' //imagen sedes
          ),
          fit: BoxFit.contain,
        )
      ),
    );
}

Widget _widget3 (Color color, String text)
{
  return Container (
      //color: Color.fromRGBO(255, 236, 0, 1.0),
      decoration: new BoxDecoration(
        color: Color.fromRGBO(255, 236, 0, 1.0),
        image: DecorationImage(
          image: new AssetImage(
            'assets/images/intervenciones_urbanas_3.jpg' //imagen sedes
          ),
          fit: BoxFit.contain,
        )
      ),
    );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("Intervenciones urbanas"),
            backgroundColor: Color.fromRGBO(229, 0, 126, 1.0),
            pinned: true,
          ),
          SliverFixedExtentList(
            itemExtent: 300,
            delegate: SliverChildListDelegate(
              [
                _widget1(Colors.pink,""),
                _widget2(Colors.pink,""),
                _widget3(Colors.pink,""),
              ]
            ),
          )
        ],
      )
    );
  }

}
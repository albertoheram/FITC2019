import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Goitia2 extends StatefulWidget {
  @override
  _Goitia2State createState() => _Goitia2State();
}

class _Goitia2State extends State<Goitia2> {

  GoogleMapController mapController;
  List<Marker> marcador = [
    
  ];

  @override
  void initState() {
    super.initState();
    marcador.add(Marker (
      markerId: MarkerId('Plazuela Goitia'),
      draggable: false,
      position: LatLng(22.774786,-102.572952)
    )
    );
  }
  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(229, 0, 126, 1.0),
        title: Text("Plazuela Goitia"),
      ), 
      body: Stack( 
        children: <Widget>[
          GoogleMap(
            onMapCreated: (controller){
                setState(() {
                 mapController = controller; 
                });
              },
              initialCameraPosition: CameraPosition(
                target: LatLng(22.774786,-102.572952),
                zoom: 18.0
              ),
            markers: Set.from(marcador),
          )
        ],
      ),
    );
  }
}
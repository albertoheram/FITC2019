import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Auza2 extends StatefulWidget {
  @override
  _Auza2State createState() => _Auza2State();
}

class _Auza2State extends State<Auza2> {

  GoogleMapController mapController;
  List<Marker> marcador = [
    
  ];

  @override
  void initState() {
    super.initState();
    marcador.add(Marker (
      markerId: MarkerId('Plazuela Miguel Auza'),
      draggable: false,
      position: LatLng(22.773913,-102.574249)
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
        title: Text("Plazuela Miguel Auza"),
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
                target: LatLng(22.773913,-102.574249),
                zoom: 18.0
              ),
            markers: Set.from(marcador),
          )
        ],
      ),
    );
  }
}
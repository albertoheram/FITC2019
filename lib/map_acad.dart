import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Acad2 extends StatefulWidget {
  @override
  _Acad2State createState() => _Acad2State();
}

class _Acad2State extends State<Acad2> {

  GoogleMapController mapController;
  List<Marker> marcador = [
    
  ];

  @override
  void initState() {
    super.initState();
    marcador.add(Marker (
      markerId: MarkerId('IZC'),
      draggable: false,
      position: LatLng(22.783654,-102.569759)
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
        title: Text("Instituto Zacatecano de Cultura"),
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
                target: LatLng(22.783654,-102.569759),
                zoom: 18.0
              ),
            markers: Set.from(marcador),
          )
        ],
      ),
    );
  }
}
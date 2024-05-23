import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';


class Brasil extends StatefulWidget {
  const Brasil({Key? key}) : super(key: key);

  @override
  _PrincipalState createState () =>_PrincipalState

    (

  );
}

class _PrincipalState extends State <Brasil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Brasil'),
            foregroundColor: Colors.white,

            centerTitle: true,
            backgroundColor: Colors.lightGreenAccent
        ),
        body: Stack(
          children: [
            FlutterMap(
              options: MapOptions(center: LatLng(22.9035, 43.2096), zoom: 3),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.thunderforest.com/mobile-atlas/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.app',
                ),
                MarkerLayer(
                    markers: [
                      Marker(
                          width: 80.0,
                          height: 80.0,
                          point: LatLng(22.9035, 43.2096),
                          builder: (ctx) =>
                              Container(
                                child: Icon(Icons.location_on, color: Colors.red),
                              )
                      )
                    ]
                )
              ],)
          ],)
    );
  }
}


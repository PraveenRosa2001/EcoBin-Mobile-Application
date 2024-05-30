import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(const GarbageshowingMap());
}

class GarbageshowingMap extends StatelessWidget {
  static const LatLng _pGooglePlex =
      LatLng(7.1280940356164715, 79.88128287742241);
  static const LatLng _GarbageLocation1 =
      LatLng(7.131708950802051, 79.88039606539519);
  static const LatLng _GarbageLocation2 =
      LatLng(7.131612264487296, 79.87617271997918);

  const GarbageshowingMap({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Map',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Padding(
            padding: EdgeInsets.only(left: 70),
            child: Text(
              "ECOBIN",
              style: TextStyle(
                fontSize: 55,
                fontFamily: 'Jaro',
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 9, 94, 2),
              ),
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: GoogleMap(
          initialCameraPosition: CameraPosition(target: _pGooglePlex, zoom: 13),
          markers: {
            Marker(
              markerId: MarkerId("_garbageLocation1"),
              icon: BitmapDescriptor.defaultMarkerWithHue(
                  BitmapDescriptor.hueRed),
              position: _GarbageLocation1,
            ),
            Marker(
              markerId: MarkerId("_garbageLocation2"),
              icon: BitmapDescriptor.defaultMarkerWithHue(
                  BitmapDescriptor.hueRed),
              position: _GarbageLocation2,
            ),
          },
        ),
      ),
    );
  }
}

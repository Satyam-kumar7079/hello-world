import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';


void main() {
   runApp(MaterialApp(
     debugShowCheckedModeBanner: false,
     home: MyGoggleMap(),
     theme: ThemeData.dark(),
     ));
 }
 
class MyGoggleMap extends StatefulWidget {
  @override
  _MyGoggleMapState createState() => _MyGoggleMapState();
}

class _MyGoggleMapState extends State<MyGoggleMap> {
  var lat1 = 23.013278;
  var long1 = 84.609366;

  // ignore: non_constant_identifier_names
  Press() async {
     var p = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    lat1 = p.latitude;
    long1 = p.longitude;
    print(p);
    }
     @override
      Widget build(BuildContext context) {
        var cp = CameraPosition(
          target: LatLng(lat1,long1),
          zoom: 19,
          tilt: 50,
           );
    
        return Scaffold(
          appBar: AppBar(
          title: Text('Goggle Map'),
          ),
          body: GoogleMap(
            initialCameraPosition: cp,
            mapType: MapType.hybrid,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: Press,
            child: Icon(Icons.add),
          ),
              );
      }
    }
    


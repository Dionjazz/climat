import 'dart:developer';

import 'package:geolocator/geolocator.dart';


class LocationMy {
   double latitude;
   double longitude;

 void getcurrentlocation () async {
     try {
       Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
       latitude= position.latitude;
       longitude= position.longitude;
     } catch(e) {
       log(e.toString());
       print('Failed');
     };
   }

}

import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima/services/networking.dart';



const apikey = 'bdf9a3be03cabbeb46d47a69473b703f';

class LoadingScreen extends StatefulWidget {


  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  double latitude;
  double longitude;
  var locationOwn;



  @override void initState() {
    super.initState();
    print('work1');
getlocation();



    Future <void> getlocationData() async {
       NetworkHelper networkHelper =   NetworkHelper(url: 'https://api.openweathermap.org/data/2.5/weather?lat={$latitude}&lon={$longitude}&appid={$apikey}');
      }
    }
  void getlocation() async {
    locationOwn = LocationMy();
    print('work2');
    await locationOwn.getcurrentlocation();
    latitude =locationOwn.latitude;
    longitude = locationOwn.longitude;
  }
  
    @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.orange,
      body: Center(
        child: ElevatedButton(child: Text('Get Location'), onPressed: () {
           getlocation();
        },),
        ),
    );
  }
}

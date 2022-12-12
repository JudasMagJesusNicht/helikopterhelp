import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import '../API/data_service.dart';
import '../API/weather_parse.dart';

class Weather extends StatefulWidget {
  const Weather({Key? key, required title}) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  final String title = 'Weather';

  final _dataService = DataService();
  final _cityTextController = TextEditingController();

   var  _response;

  var _latitude = "";
  var _longitude = "";
  var _altitude = "";
  var _adress = "";

  Future<void> _updatePosition() async {
    Position position = await _determinePosition();
    List pm =
    await placemarkFromCoordinates(position.latitude, position.longitude);
    setState(() {
      _latitude = position.latitude.toString();
      _longitude = position.longitude.toString();
      _altitude = position.altitude.toString();

      _adress = pm[0].toString();
    });
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (_response != null)
                    Column(
                      children: [
                        //Image.network(_response.iconUrl),
                        SizedBox(
                          child: Text(
                            '${_response.tempInfo.temperature}°',
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                        Text(_response.weatherInfo.description)
                      ],
                    ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 60),
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        children: [
                          TextField(
                            controller: _cityTextController,
                            decoration: InputDecoration(labelText: 'Stadt'),
                            textAlign: TextAlign.center,
                          ),
                          ElevatedButton(
                            onPressed: _search,
                            child: const Icon(Icons.search),
                          ),
                        ],
                      ),
                    ),
                    //  FloatingActionButton(
                    //
                    //     onPressed: _updatePosition,
                    //     tooltip: 'Update Position',
                    // ),
                  )
                ],
              ),

            ]
        ),
      ),
    );
  }

  void _search() async {
    final response = await _dataService.getWeather(_cityTextController.text);
    setState(() => _response = response);
    print(response.cityName);
    print(response.tempInfo.temperature);
  }
}

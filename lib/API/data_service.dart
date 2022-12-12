import 'dart:convert';

import 'package:helikopterhelp/API/weather_parse.dart';
import 'package:http/http.dart' as http;

//{}
class DataService {
  Future<WeatherResponse> getWeather(String city) async{
    //https://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={API key}

    final queryParameters = {'q' : city,'appid':'54a4320f0228f237495a6df9e9d1cac1'};

    final uri = Uri.https('api.openweathermap.org', '/data/2.5/weather', queryParameters);

    final response = await http.get(uri);

    print(response.body);
    final json = jsonDecode(response.body);
    return WeatherResponse.fromJson(json);

  }
}
/*


{

  "weather": [
    {
      "description": "moderate rain",
      "icon": "10d"
    }
  ],

  "main": {
    "temp": 298.48,

  },
  "visibility": 10000,
  "wind": {
    "speed": 0.62,
    "deg": 349,
    "gust": 1.18
  },

  "clouds": {
    "all": 100
  },

  "name": "Zocca",

}
* */

class WeatherInfo{
  final String description;
  final String icon;

  WeatherInfo({required this.description, required this.icon});

  factory WeatherInfo.fromJson(Map<String, dynamic> json){
    final description = json['description'];
    final icon = json['icon'];
    return WeatherInfo(description: description, icon: icon);
  }
}

class TemperatureResponse{
  final double temperature;


  TemperatureResponse({required this.temperature});

  factory TemperatureResponse.fromJson(Map<String, dynamic> json){
    final temperature = json['temp'];
    return TemperatureResponse(temperature: temperature);
  }

}

class WeatherResponse{
  final String cityName;
  final TemperatureResponse tempInfo;
  final WeatherInfo weatherInfo;

  WeatherResponse({required this.cityName, required this.tempInfo, required this.weatherInfo});

  factory WeatherResponse.fromJson(Map<String, dynamic> json){

    //Parsen des Namens
    final cityName = json ['name'];

    // -> main -> temperature -- Parsen der Temperatur
    final tempInfoJson = json['main'];
    final tempInfo = TemperatureResponse(temperature: tempInfoJson);

    final weatherInfoJson = json['weather'][0];
    final weatherInfo = WeatherInfo.fromJson(weatherInfoJson);

    return WeatherResponse(cityName: cityName, tempInfo: tempInfo, weatherInfo: weatherInfo);
  }

}
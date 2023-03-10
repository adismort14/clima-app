import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

class WeatherModel {
  String apiKey = 'd09ac64575dd6cedf315b0d9d202cca3';
  String openWeatherApi = 'https://api.openweathermap.org/data/2.5/weather';

  Future<dynamic> getCityData(dynamic cityName) async {
    NetworkHelper networkHelper =
        NetworkHelper('$openWeatherApi?q=$cityName&units=metric&appid=$apiKey');
    var weatherData = await networkHelper.getWeather();
    return weatherData;
  }

  Future<dynamic> getWeatherData() async {
    Location location = Location();
    await location.getUserLocation();
    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherApi?lat=${location.latitude}&lon=${location.longitude}&units=metric&appid=$apiKey');
    var weatherData = await networkHelper.getWeather();
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '๐ฉ';
    } else if (condition < 400) {
      return '๐ง';
    } else if (condition < 600) {
      return 'โ๏ธ';
    } else if (condition < 700) {
      return 'โ๏ธ';
    } else if (condition < 800) {
      return '๐ซ';
    } else if (condition == 800) {
      return 'โ๏ธ';
    } else if (condition <= 804) {
      return 'โ๏ธ';
    } else {
      return '๐คทโ';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s ๐ฆ time';
    } else if (temp > 20) {
      return 'Time for shorts and ๐';
    } else if (temp < 10) {
      return 'You\'ll need ๐งฃ and ๐งค';
    } else {
      return 'Bring a ๐งฅ just in case';
    }
  }
}

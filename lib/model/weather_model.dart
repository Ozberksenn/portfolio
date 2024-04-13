class WeatherModelMain {
  double? temp;
  double? feelsLike;
  double? tempMin;
  double? tempMax;
  int? pressure;
  int? humidity;

  WeatherModelMain({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity,
  });
  WeatherModelMain.fromJson(Map<String, dynamic> json) {
    temp = json['temp']?.toDouble();
    feelsLike = json['feels_like']?.toDouble();
    tempMin = json['temp_min']?.toDouble();
    tempMax = json['temp_max']?.toDouble();
    pressure = json['pressure']?.toInt();
    humidity = json['humidity']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['temp'] = temp;
    data['feels_like'] = feelsLike;
    data['temp_min'] = tempMin;
    data['temp_max'] = tempMax;
    data['pressure'] = pressure;
    data['humidity'] = humidity;
    return data;
  }
}

class WeatherModelWeather {
  int? id;
  String? main;
  String? description;
  String? icon;

  WeatherModelWeather({
    this.id,
    this.main,
    this.description,
    this.icon,
  });
  WeatherModelWeather.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    main = json['main']?.toString();
    description = json['description']?.toString();
    icon = json['icon']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['main'] = main;
    data['description'] = description;
    data['icon'] = icon;
    return data;
  }
}

class WeatherModelCoord {
/*
{
  "lon": 30.7133,
  "lat": 36.8969
} 
*/

  double? lon;
  double? lat;

  WeatherModelCoord({
    this.lon,
    this.lat,
  });
  WeatherModelCoord.fromJson(Map<String, dynamic> json) {
    lon = json['lon']?.toDouble();
    lat = json['lat']?.toDouble();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['lon'] = lon;
    data['lat'] = lat;
    return data;
  }
}

class WeatherModel {
/*
{
  "coord": {
    "lon": 30.7133,
    "lat": 36.8969
  },
  "weather": [
    {
      "id": 800,
      "main": "Clear",
      "description": "clear sky",
      "icon": "01n"
    }
  ],
  "base": "stations",
  "main": {
    "temp": 20.98,
    "feels_like": 20.8,
    "temp_min": 20.25,
    "temp_max": 20.98,
    "pressure": 1015,
    "humidity": 64
  },
  "id": 323777,
  "name": "Antalya"
} 
*/

  WeatherModelCoord? coord;
  List<WeatherModelWeather?>? weather;
  String? base;
  WeatherModelMain? main;
  int? id;
  String? name;

  WeatherModel({
    this.coord,
    this.weather,
    this.base,
    this.main,
    this.id,
    this.name,
  });
  WeatherModel.fromJson(Map<String, dynamic> json) {
    coord = (json['coord'] != null)
        ? WeatherModelCoord.fromJson(json['coord'])
        : null;
    if (json['weather'] != null) {
      final v = json['weather'];
      final arr0 = <WeatherModelWeather>[];
      v.forEach((v) {
        arr0.add(WeatherModelWeather.fromJson(v));
      });
      weather = arr0;
    }
    base = json['base']?.toString();
    main =
        (json['main'] != null) ? WeatherModelMain.fromJson(json['main']) : null;
    id = json['id']?.toInt();
    name = json['name']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (coord != null) {
      data['coord'] = coord!.toJson();
    }
    if (weather != null) {
      final v = weather;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['weather'] = arr0;
    }
    data['base'] = base;
    if (main != null) {
      data['main'] = main!.toJson();
    }
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

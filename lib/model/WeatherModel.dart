class WeatherModel{
  List Countries;
  WeatherModel({required this.Countries});

  factory WeatherModel.fromJson(Map json){
    print("M dn");
    return WeatherModel(Countries: json['country']);
  }
}
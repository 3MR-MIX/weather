import 'package:flutter/material.dart';
import 'package:weather/model/WeatherModel.dart';
import 'package:weather/services/WatherServies.dart';

class WeatherProvider extends ChangeNotifier{
  WeatherModel? weatherModel;

  Future<void> FeatchData()async{
    weatherModel = await WeatherServices.GetData();
    print("P dn");
    notifyListeners();
  }
}
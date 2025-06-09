import 'package:dio/dio.dart';
import 'package:weather/model/WeatherModel.dart';

class WeatherServices{
  static Dio dio = Dio();

  static Future<WeatherModel> GetData()async{
    try{
      Response response = await dio.get("https://elsewedyteam.runasp.net/api/Country/GetCountries");
      if(response.statusCode == 200){
        print("S Dn");
        return WeatherModel.fromJson(response.data);
      }
      else{
        throw "error";
      }
    }
    catch(e){
      throw Exception("the status code $e");
    }
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/provider/WeatherProvider.dart';
import 'package:weather/screen/Details.dart';
import 'package:weather/widget/WeatherWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var p=Provider.of<WeatherProvider>(context);
    var list=p.weatherModel?.Countries!;
    p.FeatchData();
    return Scaffold(
        body: ListView.builder
          (itemCount:list?.length ,
          itemBuilder: (context, index) =>
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Details(
                        image:  list?[index]["imageUrl"],
                        name:  list?[index]["name"],
                        cond: list?[index]["weatherCondition"],
                        temp: list?[index]["tempreature"]),
                  ));
                },
                child: CustomCard(
                    image: list?[index]["imageUrl"],
                    name: list?[index]["name"]),
              ),
        ));
  }
}

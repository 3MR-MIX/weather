import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/provider/WeatherProvider.dart';
import 'package:weather/screen/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => WeatherProvider(),)
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

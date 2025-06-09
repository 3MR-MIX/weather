import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {

  String image;
  String name;
  String temp;
  String cond;
   Details({super.key,required this.image,required this.name,required this.cond,required this.temp});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: 200, height: 200,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Image(image: NetworkImage(image)),
                SizedBox(height: 10,),
                Text(name),
                SizedBox(height: 10,),
                Text(temp),
                SizedBox(height: 10,),
                Text(cond),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

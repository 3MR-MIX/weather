import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  String name;
  String image;
  CustomCard({required this.image,required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Container(
        width: 320,
        child: Card(
          color: Colors.blueAccent,
          elevation: 10.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(image: NetworkImage(image)),
              SizedBox(width: 20,),
              Text(name,style: TextStyle(fontSize: 18,color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

Widget gradientWidget (){
  return Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: const [

              Color.fromARGB(255, 187, 192, 196),
              Color.fromARGB(255, 114, 127, 136),

            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
        )
    ),
  );
}
import 'package:flutter/material.dart';
import 'package:ui_desafio1/styles.dart';

Widget circleAvatar(String url, String name){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(url),
            fit: BoxFit.cover
          )
        ),
      ),
      SizedBox(height: 5,),
      Text(name, style: TextStyles.bodyNameStyle,)
    ],
  );
}
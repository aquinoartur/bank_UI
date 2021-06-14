import 'package:flutter/material.dart';

import '../styles.dart';

Widget optionIcon(String name, Icon icon){
  return Column(
    children: [
      Material(
        elevation: 5,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color:  Color.fromARGB(255,60,83,96),
            borderRadius: BorderRadius.circular(20)
          ),
          child: icon,
        ),
      ),
      SizedBox(height: 5,),
      Text(name, style: TextStyles.bodyNameStyle)
    ],
  );
}
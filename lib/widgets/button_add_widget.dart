import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

import '../styles.dart';

Widget buttonAdd(String name){
  final Color color = Color.fromARGB(255, 157, 174, 183);

  return InkWell(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          width: 70,
          height: 70,
          child: Material(
            elevation: 5,
            color: Colors.transparent,
            shape: CircleBorder(),
            child: Container (
              decoration: BoxDecoration(
                color:  Color.fromARGB(255,60,83,96),
                shape: BoxShape.circle
              ),
              child: LineIcon.plus(size: 32, color: color)
            ),
          ),
        ),
        SizedBox(height: 5,),
        Text(name, style: TextStyles.bodyNameStyle,)
      ],
    ),
  );
}
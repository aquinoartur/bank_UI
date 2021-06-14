import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:ui_desafio1/styles.dart';

Widget backCard() {
  return Stack(
    children: [
      RotationTransition(
        turns: new AlwaysStoppedAnimation(-5 / 360),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 69, 96, 115).withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 1,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ],
          ),
          height: 200,
        ),
      ),
      Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("assets/images/card.png")),
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(vertical: 28),
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              color: Colors.black,
            ),
            SizedBox(height: 15,),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                padding: EdgeInsets.only(right: 5),
                height: 40,
                width: 200,
                color: Colors.grey.withOpacity(.8),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("123", style: TextStyles.bodyCardBottomStyle2,)),
              ),
            ),
          ],
        ),
      ),

    ],
  );
}

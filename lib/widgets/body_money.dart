import 'package:flutter/material.dart';

import '../styles.dart';

Widget bodyMoney(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30),
    child: Column(
      children: [
        Row(
          children: [
            Expanded(child: Text("Limite disponível", style: TextStyles.bodyTitleStyle,)),
            Text.rich(
              TextSpan(
                  children: [
                    TextSpan(text: "R\$", style: TextStyles.bodyMoneyStyle1),
                    TextSpan(text: "290,00", style: TextStyles.bodyMoneyStyle2)
                  ]
              ),
            )
          ],
        ),
        Container(
          margin:EdgeInsets.only(top: 10),
          height: 10,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: LinearProgressIndicator(
              value: .7,
              color: Color.fromARGB(255, 69, 96, 115),
              backgroundColor: Color.fromARGB(255, 205, 210, 214),
            ),
          ),
        )
      ],
    ),
  );
}
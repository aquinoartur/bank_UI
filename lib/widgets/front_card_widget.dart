import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:ui_desafio1/styles.dart';

Widget frontCard() {
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
        padding: EdgeInsets.all(20),
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Valor",
                  style: TextStyles.bodyCardStyle,
                ),
                Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: "R\$", style: TextStyles.bodyMoneyCardStyle1),
                    TextSpan(
                        text: "10.000", style: TextStyles.bodyMoneyCardStyle2)
                  ]),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text.rich(
                      TextSpan(
                          text: "**** **** **** ",
                          style: TextStyles.bodyTextCardStyle1,
                          children: [
                            TextSpan(
                                text: "1234",
                                style: TextStyles.bodyTextCardStyle2)
                          ]),
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: LineIcon.eyeSlash(
                          color: Colors.grey,
                          size: 26,
                        )))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Ellie Jones",
                      style: TextStyles.bodyCardStyle2,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          "Agência",
                          style: TextStyles.bodyCardBottomStyle1,
                        ),
                        Text(
                          "1234",
                          style: TextStyles.bodyCardBottomStyle2,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          "Validade",
                          style: TextStyles.bodyCardBottomStyle1,
                        ),
                        Text(
                          "12/34",
                          style: TextStyles.bodyCardBottomStyle2,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

import '../styles.dart';
import 'option_icon_widget.dart';

Widget bodyOptions(){

  final Color color = Color.fromARGB(255, 157, 174, 183);

  List<String> listName = [
    "Extratos",
    "Análise",
    "Prêmios",
    "Calendário",
  ];

  List<LineIcon> icons = [
    LineIcon.dollarSign(color: color, size: 32,),
    LineIcon.lineChart(color: color, size: 32,),
    LineIcon.award(color: color, size: 32,),
    LineIcon.calendar(color: color, size: 32,),
  ];


  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Outras atividades", style: TextStyles.bodyTitleStyle2,),
        Container(
          height: 110,
          padding: EdgeInsets.only(top: 10),
          child: ListView.separated(
            separatorBuilder: (context, index){
              return SizedBox( width: 15);
            },
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index){
              return optionIcon(listName[index], icons[index]);
            },
          ),
        ),
      ],
    ),
  );
}
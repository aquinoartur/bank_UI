import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../styles.dart';

SliverAppBar sliverAppBar (){
  return SliverAppBar(
    titleSpacing: 0,
    automaticallyImplyLeading: false,
    toolbarHeight: 100,
    title: Container(
        padding: EdgeInsets.only(left: 30),
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Olá, Ellie', style: TextStyles.appBarTitleStyle, textAlign: TextAlign.left,),
            Text('Bem-vinda de volta!', style: TextStyles.appBarSubtitleStyle, textAlign: TextAlign.left,),
          ],
        )
    ),
    snap: true,
    floating: true,
    elevation: 0,
    backgroundColor: Colors.transparent,
    actions: <Widget>[
      Container(
          padding: EdgeInsets.only(right: 30),
          alignment: Alignment.centerRight,
          child: GestureDetector(
            child: SvgPicture.asset("assets/svg/drawer.svg", width: 20, height: 20,  fit: BoxFit.fill,),
          )
      ),
    ],
  );
}
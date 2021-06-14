import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:ui_desafio1/widgets/back_card_widget.dart';
import 'package:ui_desafio1/widgets/body_money.dart';
import 'package:ui_desafio1/widgets/body_options.dart';
import 'package:ui_desafio1/widgets/body_person.dart';
import 'package:ui_desafio1/widgets/front_card_widget.dart';
import 'package:ui_desafio1/widgets/gradient_widget.dart';
import 'package:ui_desafio1/widgets/sliver_app_bar_widget.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          gradientWidget(),
          CustomScrollView(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            slivers: [
              sliverAppBar(),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    speed: 1000,
                    front: frontCard(),
                    back: backCard(),
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 20,),),
              SliverToBoxAdapter(child: bodyMoney()),
              SliverToBoxAdapter(child: SizedBox(height: 30,),),
              SliverToBoxAdapter(child: bodyPerson()),
              SliverToBoxAdapter(child: SizedBox(height: 26,),),
              SliverToBoxAdapter(child: bodyOptions())
          ],
          ),
        ],
      ),
    );
  }
}

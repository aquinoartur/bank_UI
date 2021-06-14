import 'package:flutter/material.dart';
import 'package:ui_desafio1/widgets/circle_avatar_widget.dart';

import '../styles.dart';
import 'button_add_widget.dart';

Widget bodyPerson(){
  List<String> list = [
    "https://image.freepik.com/fotos-gratis/jovem-e-linda-jardineira-de-avental-e-chapeu-mostrando-pimenta-verde-quebrada-olhando-para-frente-sorrindo-com-uma-cara-feliz-em-pe-sobre-a-parede-verde_141793-96320.jpg",
    "https://image.freepik.com/fotos-gratis/medio-tiro-feliz-homem-sorrindo_23-2148221808.jpg",
    "https://img.freepik.com/fotos-gratis/foto-na-cabeca-de-um-homem-de-pele-escura-e-barbudo-ri-alegremente-aperta-os-olhos-de-alegria-mostra-os-dentes-brancos-usa-chapeu-preto-e-sueter-listrado-isolado-sobre-o-espaco-marrom_273609-38588.jpg?size=338&ext=jpg",
    "https://image.freepik.com/fotos-gratis/foto-do-perfil-de-uma-linda-garota-com-cabelo-castanho-na-boina-mulher-saboreando-a-famosa-sobremesa-americana-em-um-cafe-de-rua_197531-12006.jpg",
  ];
  List<String> listName = [
    "Anna",
    "Rodrigo",
    "Manuel",
    "Abby",
    "Adicionar"
  ];
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Transferências recentes", style: TextStyles.bodyTitleStyle,),
        Container(
          height: 110,
          padding: EdgeInsets.only(top: 10),
          child: ListView.separated(
            separatorBuilder: (context, index){
              return SizedBox( width: 10);
            },
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: list.length + 1,
            itemBuilder: (context, index){
              return index < list.length ? circleAvatar(list[index], listName[index]) : buttonAdd(listName[index]);
            },
          ),
        ),
      ],
    ),
  );
}
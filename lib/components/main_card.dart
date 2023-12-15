import 'package:flutter/material.dart';
import 'zkr_text.dart';

Widget mainCard(Icon icon1,String title,Function() event)
{
  return Padding(
    padding: const EdgeInsets.all(6),
    child: Card(
      clipBehavior: Clip.hardEdge,
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: const Color(0xffA4593C),
      shadowColor: const Color(0xffFBECDA),

      child: Container(
        height: 60,
        margin: const EdgeInsets.only(right: 10),
        decoration: const BoxDecoration(
            color: Color(0xffFBECDA),
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(20),
            )),
        child: ListTile(
          onTap: event,
          iconColor: const Color(0xffA4593C),
          leading: icon1,
          title: ZkrText(txt: '$title',color: Color(0xffA4593C),size: 22),
        ),
      ),
    ),
  );
}
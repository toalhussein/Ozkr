import 'package:flutter/material.dart';

Widget ZkrText({String txt='',double size=12, Color color = Colors.white })
{
  return Text(
      '$txt',
      style: TextStyle(
        fontFamily: 'AmiriQuran',
        fontSize: size,
        color: color
      )
  );
}
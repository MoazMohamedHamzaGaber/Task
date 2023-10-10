import 'package:flutter/material.dart';

import 'constant.dart';

Widget buildMaterialButton({
  required String text,
  required BorderRadius borderRadius,
  required Color color,
  double? width,
  double? height,
  Function()? function,
  IconData? iconData,
})=>Container(
  width: width,
  height: height,
  decoration: BoxDecoration(
    color: color,
    borderRadius: borderRadius,
  ),
  child: MaterialButton(
    onPressed: function,
    child:  Text(
      text,
      style:const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
);

AppBar appBar({
  context,
  required String text,
})=>AppBar(
  elevation: 0,
  backgroundColor: kPrimaryColor,
  leading: IconButton(
    onPressed: (){
      Navigator.pop(context);
    },
    icon: const Icon(Icons.arrow_back_ios_new_outlined),
  ),
  title: Text(text),
);
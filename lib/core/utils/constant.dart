import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void navigateTo(context,Widget)=>Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context)=>Widget
    ));



Color kPrimaryColor=const Color(0xff2B475E);
const kGTSectraFineRegular='Schyler';


var searchController = TextEditingController();


String? token;
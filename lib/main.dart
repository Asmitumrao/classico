import 'package:flutter/material.dart';
import "package:classico/currency_converter2.dart";


void main() {
  // runApp(Text("this is text displayed buy flutter ",
  //     textDirection: TextDirection.ltr));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialPage2(),
    );
  }
}

//types of widgets
//  1. StatelessWidgets
//  2. StatefulWidgets
//  3. InheritedWidget

// state?? (what is state?)

// two types of design 
// 1. material design --by google
// 2. coopertino design --by apple 



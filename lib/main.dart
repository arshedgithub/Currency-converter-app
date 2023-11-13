import 'package:currency_converter_app/currency_converter_cupertino_page.dart';
import 'package:currency_converter_app/currency_converter_material_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyCupertinoApp());
}

// for Material
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurrenceyConverterMaterialPage(),
    );
  }
}

// for Cupertino
class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrenceyConverterCupertinoPage(),
    );
  }
}
import 'package:flutter/material.dart';

import 'alcool_gasolina.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Álcool ou Gasolina",
      home: CalculaCombustivel(),
    ),
  );
}

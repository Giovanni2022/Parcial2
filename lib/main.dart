import 'package:flutter/material.dart';
import 'package:parcial2_shop/home_page.dart';

void main() {
  runApp(const ShopParcial());
}

class ShopParcial extends StatelessWidget {
  const ShopParcial({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Comercial SIVAR",
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(228, 255, 252, 252),
      ),
      home: home_page(),
    );
  }
}

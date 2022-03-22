import 'package:flutter/material.dart';
import 'package:parcial2_shop/home_page.dart';
import 'package:parcial2_shop/producto.dart';

class detalleProducto extends StatefulWidget {
  detalleProducto({Key? key}) : super(key: key);

  @override
  State<detalleProducto> createState() => _detalleProductoState();
}

class _detalleProductoState extends State<detalleProducto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
      body: Contai(),
    );
  }

  Widget Contai() {
    var tamanio = MediaQuery.of(context).size;
    return producto("assets/Grupo1.png", "Silla Naranja", "30.00");
  }
}

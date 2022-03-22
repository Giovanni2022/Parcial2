import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:parcial2_shop/producto.dart';

class home_page extends StatefulWidget {
  home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(10.0, 10.0)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white70,
                    blurRadius: 10.0,
                  )
                ],
              ),
              child: const Icon(
                Icons.sort,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            const Text(
              "Comercial SIVAR",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              child: TextField(
                cursorColor: Colors.white.withOpacity(0.3),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 0.0),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.black54.withOpacity(0.3),
                  ),
                  hintText: "Buscar...",
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            TabBar(
              indicatorColor: Colors.black,
              unselectedLabelColor: Colors.black54,
              labelColor: Colors.black,
              isScrollable: true,
              labelStyle: const TextStyle(fontSize: 17.0),
              controller: _tabController,
              tabs: const [
                Tab(
                  text: "Sillas",
                ),
                Tab(
                  text: "Muebles",
                ),
                Tab(
                  text: "Camas",
                ),
                Tab(
                  text: "Cunas",
                )
              ],
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Expanded(
                child: TabBarView(
              children: [
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    producto("assets/Grupo1.png", "Silla Guanaca", "24.99"),
                    const SizedBox(
                      width: 15.0,
                    ),
                    producto("assets/Grupo2.png", "Silla Guanaca", "24.99"),
                    const SizedBox(
                      width: 15.0,
                    ),
                    producto("assets/Grupo3.png", "Silla Guanaca", "24.99"),
                    const SizedBox(
                      width: 15.0,
                    ),
                    producto("assets/Grupo4.png", "Silla Guanaca", "24.99"),
                  ],
                ),
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    producto("assets/Mueble1.png", "Mesa auxiliar", "75"),
                    const SizedBox(
                      width: 15.0,
                    ),
                    producto(
                        "assets/Mueble2.png", "Sofa para 2 personas", "325"),
                    const SizedBox(
                      width: 15.0,
                    ),
                    producto(
                        "assets/Mueble3.png", "Sofa para 1 persona", "150"),
                    const SizedBox(
                      width: 15.0,
                    ),
                    producto(
                        "assets/Mueble4.png", "Estante para libros", "200"),
                  ],
                ),
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    producto("assets/Cama1.png", "Cama con colchon", "200"),
                    const SizedBox(
                      width: 15.0,
                    ),
                    producto("assets/Cama2.png", "Cama de madera", "325"),
                    const SizedBox(
                      width: 15.0,
                    ),
                    producto("assets/Cama3.png", "Cama individual", "400"),
                    const SizedBox(
                      width: 15.0,
                    ),
                    producto("assets/Cama4.png", "Cama doble colchon", "400"),
                  ],
                ),
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    producto("assets/Cuna1.png", "Cuna para bebe", "150"),
                    const SizedBox(
                      width: 15.0,
                    ),
                    producto("assets/Cuna2.png", "Cuna doble de bebes", "200"),
                    const SizedBox(
                      width: 15.0,
                    ),
                    producto("assets/Cuna3.png", "Cuna con mesedora", "250"),
                    const SizedBox(
                      width: 15.0,
                    ),
                    producto("assets/Cuna4.png", "Cuna de transporte", "50"),
                  ],
                ),
              ],
              controller: _tabController,
            ))
          ],
        ),
      ),
    );
  }
}


// https://www.youtube.com/watch?v=Obdptptgp90
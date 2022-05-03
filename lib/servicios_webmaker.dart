import 'package:flutter/material.dart';

class PaginaInicial extends StatefulWidget {
  PaginaInicial({Key? key}) : super(key: key);
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
} // Widget CON estado

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/webmaster1.jpg",
    "assets/images/webmaster2.jpg",
    "assets/images/webmaster3.jpg",
    "assets/images/webmaster4.jpg",
    "assets/images/webmaster5.jpg",
    "assets/images/webmaster6.jpg",
    "assets/images/webmaster7.jpg",
    "assets/images/webmaster8.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Servicios de WebMaker v.2"),
          backgroundColor: Colors.teal[900],
        ),
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 8,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}

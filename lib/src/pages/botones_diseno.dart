import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  const BotonesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titulo(),
                _botonesRedondeados(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ],
        ),
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(80.0),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ],
          ),
        ),
      ),
    );

    return Stack(
      children: [
        gradiente,
        Positioned(top: -100, child: cajaRosa),
      ],
    );
  }

  Widget _titulo() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Kaede Akamatsu',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Ultimate Pianist',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: const Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
              caption:
                  const TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)),
            ),
      ),
      child: BottomNavigationBar(
        fixedColor: Colors.pink,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              size: 30.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pie_chart_outline_outlined,
              size: 30.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bubble_chart,
              size: 30.0,
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget _botonesRedondeados() {
    return Table(children: [
      TableRow(
        children: [
          _crearBotonRedondeado(Colors.pink, Icons.border_all, 'Piano'),
          _crearBotonRedondeado(Colors.red, Icons.abc_outlined, 'General'),
        ],
      ),
      TableRow(
        children: [
          _crearBotonRedondeado(Colors.green, Icons.sports_baseball, 'Shuichi'),
          _crearBotonRedondeado(Colors.orange, Icons.piano, 'Akamatsu'),
        ],
      ),
      TableRow(
        children: [
          _crearBotonRedondeado(Colors.blueGrey, Icons.bakery_dining, 'Kaede'),
          _crearBotonRedondeado(Colors.blue, Icons.shop, 'Clair de Lune'),
        ],
      ),
      TableRow(
        children: [
          _crearBotonRedondeado(
              Colors.pink.shade300, Icons.sports_basketball, 'Saihara'),
          _crearBotonRedondeado(Colors.purple, Icons.search, 'Detective'),
        ],
      ),
    ]);
  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String text) {
    return Container(
      height: 160.0,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(height: 5.0),
          CircleAvatar(
            backgroundColor: color,
            radius: 25.0,
            child: Icon(
              icono,
              color: Colors.white,
              size: 25.0,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 15.0,
              color: color,
            ),
          ),
          const SizedBox(height: 5.0),
        ],
      ),
    );
  }
}

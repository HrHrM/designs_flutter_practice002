import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  const BasicoPage({Key? key}) : super(key: key);

  final estiloTitulo = const TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );
  final estiloSubtitulo = const TextStyle(
    fontSize: 18.0,
    color: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Kaede Akamatsu', style: estiloTitulo),
                  const SizedBox(height: 7.0),
                  Text('Ultimate Pianist', style: estiloSubtitulo),
                ],
              ),
            ),
            const Icon(Icons.star, color: Colors.pink, size: 30.0),
            const Text(
              '100',
              style: const TextStyle(
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: const Image(
        image: NetworkImage(
          'https://static.zerochan.net/Akamatsu.Kaede.full.2573808.png',
        ),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call, 'Call'),
        _accion(Icons.near_me, 'Route'),
        _accion(Icons.share, 'Share'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Row(
      children: [
        Column(
          children: [
            Icon(
              icon,
              color: Colors.blue,
              size: 40.0,
            ),
            const SizedBox(height: 5.0),
            Text(
              texto,
              style: const TextStyle(fontSize: 15.0, color: Colors.blue),
            ),
          ],
        ),
      ],
    );
  }

  Widget _crearTexto() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: const Text(
          'Kaede Akamatsu (赤松 楓) is a student in the Ultimate Academy for Gifted Juveniles and a participant of the Killing School Semester featured in Danganronpa V3: Killing Harmony. Her title is the Ultimate Pianist (超高校級の「ピアニスト」 lit. Super High School Level Pianist).',
          textAlign: TextAlign.justify,
        ));
  }
}

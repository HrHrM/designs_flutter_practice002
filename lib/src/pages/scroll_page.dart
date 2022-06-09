import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _pagina1(),
          _pagina2(),
        ],
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: [
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenFondo() {
    return const SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/kaede.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos() {
    const estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 20.0),
          const Text('11°', style: estiloTexto),
          const Text('Miercoles', style: estiloTexto),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down,
              size: 70.0, color: Colors.white),
        ],
      ),
    );
  }

  Widget _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.lightBlue,
      child: Center(
        child: ElevatedButton(
          style: const ButtonStyle(),
          child: const Text('Bienvenidos'),
          onPressed: () {},
        ),
      ),
    );
  }
}

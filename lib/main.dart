import 'package:flutter/material.dart';

void main() => runApp(const MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Mi App",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Image.asset(
                'assets/images/logo.png',
                scale: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Remember',
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  SizedBox(width: 1),
                  Text(
                    'Me',
                    style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
                  ),
                ],
              ),
              const SizedBox(height: 10)
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 248, 154, 31),
        ),
        body: ListView(
          children: [
            Container(
                padding: const EdgeInsets.all(20.0),
                child: Image.network(
                    "https://www.thehighereducationreview.com/newsimagespl/82iom179.jpeg")),
            Container(
                padding: const EdgeInsets.all(20.0),
                child: Image.network(
                    "https://i.pinimg.com/originals/42/b8/c9/42b8c90ea9788cc68aab20efd525d0b5.png")),
            Container(
                padding: const EdgeInsets.all(20.0),
                child: Image.network(
                    "https://site.millasparaelretiro.com/wp-content/uploads/pablo-heimplatz-EAvS-4KnGrk-unsplash-scaled.jpg")),
            Container(
                padding: const EdgeInsets.all(20.0),
                child: Image.network(
                    "https://avatars.dzeninfra.ru/get-zen_doc/8080662/pub_64072ee0871cbc7cdb0fcbc0_64072f0a976ffe173bb44eb5/scale_1200")),
            Column(children: [
              // ignore: avoid_unnecessary_containers
              Container(
                width: MediaQuery.of(context).size.width,
                child: const Text('Designed',
                    textAlign: TextAlign.start, style: TextStyle(fontSize: 30)),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: const Text('By',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25))),
              Container(
                width: MediaQuery.of(context).size.width,
                child: const Text('FabrizioJDN',
                    textAlign: TextAlign.end, style: TextStyle(fontSize: 30)),
              ),
            ])
          ],
        ));
  }
}

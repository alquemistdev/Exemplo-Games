import 'package:flutter/material.dart';

void main(List<String> args) => (runApp(MeuListGame()));

class MeuListGame extends StatelessWidget {
  MeuListGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MinhaPagina();
  }
}

class MinhaPagina extends StatelessWidget {
  MinhaPagina({super.key});

  List<String> categorias = [
    'Ação',
    'Indie',
    'AAA',
    'Aventura',
    'RPG',
    'Estrategia',
    'Puzzle',
    'Arcade',
    'Simulação',
    'Casual'
  ];

  List<Widget> categoriasForma() {
    List<Widget> forma = [];
    for (var e in categorias) {
      forma.add(
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
          child: Column(
            children: [
              SizedBox(
                width: 70,
                height: 70,
                child: Image.asset(
                  'assets/images/Perfil.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                e,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              )
            ],
          ),
        ),
      );
    }
    return forma;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Bem-vindo Ismael",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("O que você vai querer jogar",
                          style: TextStyle(fontSize: 13))
                    ],
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/Perfil.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 600,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 6,
                  )
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: categoriasForma(),
                      ),
                    ),
                  ),
                ),
                Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Text(
                        'Todos os Games',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [],
                  ),
                )
              ]),
            )
          ],
        ),
        backgroundColor: Color.fromRGBO(255, 106, 63, 1),
      ),
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(255, 106, 63, 255),
      ),
    );
  }
}

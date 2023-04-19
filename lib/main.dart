import 'package:flutter/material.dart';

void main(List<String> args) => (runApp(MeuListGame()));

class MeuListGame extends StatelessWidget {
  MeuListGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MinhaPagina();
  }
}

class MinhaPagina extends StatefulWidget {
  MinhaPagina({super.key});

  @override
  State<MinhaPagina> createState() => _MinhaPaginaState();
}

class _MinhaPaginaState extends State<MinhaPagina> {
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

  List<Map<String, String>> jogos = [
    {
      'Nome': 'Jogo 01',
      'Categoria': 'Ação',
    },
    {
      'Nome': 'Jogo 02',
      'Categoria': 'Estrategia',
    },
    {
      'Nome': 'Jogo 03',
      'Categoria': 'Ação',
    },
    {
      'Nome': 'Jogo 04',
      'Categoria': 'AAA',
    },
    {
      'Nome': 'Jogo 05',
      'Categoria': 'Arcade',
    },
    {
      'Nome': 'Jogo 06',
      'Categoria': 'Casual',
    },
    {
      'Nome': 'Jogo 06',
      'Categoria': 'Casual',
    },
    {
      'Nome': 'Jogo 06',
      'Categoria': 'Casual',
    },
    {
      'Nome': 'Jogo 06',
      'Categoria': 'Casual',
    },
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
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/pasta.jpg',
                      fit: BoxFit.cover,
                    ),
                  )),
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

  List<Widget> jogosForma() {
    List<Widget> forma = [];
    for (Map j in jogos) {
      forma.add(Padding(
        padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
        child: Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            color: Color.fromRGBO(224, 224, 224, 0.589),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 70,
                    height: 70,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/arcade.jpg',
                        fit: BoxFit.fill,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        j['Nome'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        j['Categoria'],
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        width: 85,
                        height: 20,
                        child: Image.asset(
                          'assets/images/Estrelas.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Container(
                        width: 80,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Text(
                          'Ver mais',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ));
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
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/Perfil.png',
                          fit: BoxFit.cover,
                        ),
                      )),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 724,
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
                Container(
                  height: 520,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: jogosForma(),
                      ),
                    ),
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

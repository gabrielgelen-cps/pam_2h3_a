import 'dart:math';

import 'package:flutter/material.dart';

//essa classe representa o widget responsável por
//gerir todo o meu app
class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  //método onde devemos indicar o que nosso widged irá
  //apresentar: como será sua composição?
  //o que ele mostra ao usuário?
  @override
  Widget build(BuildContext context) {
    //a classe MaterialApp é uma classe que segue as regras do
    //material (material.io) e sabe gerenciar um app como um todo
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//essa classe representa o widged onde vamos montar a nossa tela
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget caixa() {
    return SizedBox(
      width: 50,
      height: 50,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              geraCorAleatoria(),
              geraCorAleatoria(),
              geraCorAleatoria(),
              geraCorAleatoria(),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
      ),
    );
  }

  Widget linha(List<Widget> items) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: items,
    );
  }

  Widget duasCaixas() {
    return linha(
      [
        caixa(),
        caixa(),
      ],
    );
  }

  Widget tresCaixas() {
    return linha(
      [
        caixa(),
        caixa(),
        caixa(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          actions: [
            IconButton(
                onPressed: () => setState(() {}),
                icon: const Icon(Icons.refresh))
          ],
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              caixa(),
              duasCaixas(),
              tresCaixas(),
              duasCaixas(),
              caixa()
            ],
          ),
        ));
  }
}

Color geraCorAleatoria() {
  final random = Random();

  return Color.fromARGB(
    255,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
  );
}

//todo projeto em dart começa a execução pelo método main
void main() => runApp(const Aplicacao());

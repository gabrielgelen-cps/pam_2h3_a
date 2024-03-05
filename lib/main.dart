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
    );
  }
}

//essa classe representa o widged onde vamos montar a nossa tela
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //SizedBox vai forçar o Container, que está dentro
                  //dele a ter o tamanho 200x200
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Container(
                      //através do BoxDecoration, podemos customizar o
                      //aspecto visual de um Container
                      decoration: BoxDecoration(
                        color: geraCorAleatoria(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Container(
                      //através do BoxDecoration, podemos customizar o
                      //aspecto visual de um Container
                      decoration: BoxDecoration(
                        color: geraCorAleatoria(),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Container(
                      //através do BoxDecoration, podemos customizar o
                      //aspecto visual de um Container
                      decoration: BoxDecoration(
                        color: geraCorAleatoria(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Container(
                      //através do BoxDecoration, podemos customizar o
                      //aspecto visual de um Container
                      decoration: BoxDecoration(
                        color: geraCorAleatoria(),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Container(
                      //através do BoxDecoration, podemos customizar o
                      //aspecto visual de um Container
                      decoration: BoxDecoration(
                        color: geraCorAleatoria(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Container(
                      //através do BoxDecoration, podemos customizar o
                      //aspecto visual de um Container
                      decoration: BoxDecoration(
                        color: geraCorAleatoria(),
                      ),
                    ),
                  )
                ],
              )
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

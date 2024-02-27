import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aula 3"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("Sorteio"),
            Text(
              Random().nextInt(100).toString(),
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Color.fromARGB(255, Random().nextInt(255),
                        Random().nextInt(255), Random().nextInt(255)),
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const Column(
              children: [
                Text("Gabriel Gelen"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("2H3"),
                    Text("2024"),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

void main() {
  runApp(const Aplicacao());
}

import 'package:flutter/material.dart';

void main() {
  runApp(const Aplicacao());
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Atividade'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nome: Gabriel'),
                Text('Email: gabriel.gelen@etec.sp.gov.br'),
                Text('Idade: 21 anos')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('2H3    2024')],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

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
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: theme.textTheme.titleLarge?.copyWith(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("lib/assets/images/netero-heart.png",
              height: 350, fit: BoxFit.fitHeight),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hunter X Hunter'),
              Text('Ano Lançamento: 1998   Duração: 50 horas')
            ],
          ),
          const Text('Diretor: Kazuhiro Furuhashi'),
          const Text('Classificação: 14 anos')
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    final num1Controller = TextEditingController();
    final num2Controller = TextEditingController();

    return Scaffold(
        appBar: AppBar(
            title: const Text("Home"),
            backgroundColor: Theme.of(context).colorScheme.inversePrimary),
        body: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 350,
                  child: TextField(
                    controller: num1Controller,
                    decoration: const InputDecoration(labelText: "num1"),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
                const Text("+"),
                SizedBox(
                  width: 350,
                  child: TextField(
                    controller: num2Controller,
                    decoration: const InputDecoration(labelText: "num2"),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () => soma(
                            context, num1Controller.text, num2Controller.text),
                        child: const Text("+")),
                    ElevatedButton(
                        onPressed: () => subtracao(
                            context, num1Controller.text, num2Controller.text),
                        child: const Text("-")),
                    ElevatedButton(
                        onPressed: () => multiplicacao(
                            context, num1Controller.text, num2Controller.text),
                        child: const Text("*")),
                    ElevatedButton(
                        onPressed: () => divisao(
                            context, num1Controller.text, num2Controller.text),
                        child: const Text("/")),
                    ElevatedButton(
                        onPressed: () => clear(num1Controller, num2Controller),
                        child: const Text("Limpar!")),
                  ],
                )
              ],
            )));
  }

  void soma(BuildContext context, String valor1, valor2) {
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);
    final mensagem = "$num1 + $num2 = ${num1 + num2}";

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(mensagem)));
  }

  void subtracao(BuildContext context, String valor1, valor2) {
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);
    final mensagem = "$num1 - $num2 = ${num1 - num2}";

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(mensagem)));
  }

  void multiplicacao(BuildContext context, String valor1, valor2) {
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);
    final mensagem = "$num1 * $num2 = ${num1 * num2}";

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(mensagem)));
  }

  void divisao(BuildContext context, String valor1, valor2) {
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);

    if (num2 == 0) {
      const mensagem = "Operação Inválida!";

      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text(mensagem)));
      return;
    }

    final mensagem = "$num1 / $num2 = ${num1 / num2}";

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(mensagem)));
  }

  void clear(TextEditingController num1, num2) {
    num1.text = "";
    num2.text = "";
  }
}

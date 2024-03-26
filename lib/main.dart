import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

void main() => runApp(const Aplicacao());

final formatter = NumberFormat.currency(
  locale: "pt_br",
  symbol: "R\$",
);

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
    final num3Controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 350,
              child: TextField(
                controller: num1Controller,
                decoration: const InputDecoration(labelText: "valor"),
                keyboardType: TextInputType.number,
                inputFormatters: decimalNumber(),
              ),
            ),
            SizedBox(
              width: 350,
              child: TextField(
                controller: num2Controller,
                decoration:
                    const InputDecoration(labelText: "taxa de juros (%)"),
                keyboardType: TextInputType.number,
                inputFormatters: decimalNumber(),
              ),
            ),
            SizedBox(
              width: 350,
              child: TextField(
                controller: num3Controller,
                decoration:
                    const InputDecoration(labelText: "quantidade pagamentos"),
                keyboardType: TextInputType.number,
                inputFormatters: decimalNumber(),
              ),
            ),
            ElevatedButton(
                onPressed: () => calc(context, num1Controller.text,
                    num2Controller.text, num3Controller.text),
                child: const Text("Calcular"))
          ],
        ),
      ),
    );
  }
}

void calc(BuildContext context, String valor, taxa, qntd) {
  final num1 = double.parse(valor);
  final num2 = double.parse(taxa);
  final num3 = double.parse(qntd);
  final juros = num1 * (num2 / 100) * num3;
  final total = num1 + juros;
  final mensagem =
      "${formatter.format(num1)} emprestado por $num3 pagamentos = ${formatter.format(total)}";

  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(mensagem)));
}

List<TextInputFormatter> decimalNumber() => [
      FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
      TextInputFormatter.withFunction((oldValue, newValue) {
        final text = newValue.text;

        if (text.isEmpty) {
          return newValue;
        } else if (double.tryParse(text) == null) {
          return oldValue;
        } else {
          return newValue;
        }
      })
    ];

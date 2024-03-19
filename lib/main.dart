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
    final usuarioController = TextEditingController(text: "");
    final passwordController = TextEditingController(text: "");

    return Scaffold(
        appBar: AppBar(
            title: const Text("Home"),
            backgroundColor: Theme.of(context).colorScheme.inversePrimary),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                child: Text(
                  "Login",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    width: 300,
                    child: TextField(
                      controller: usuarioController,
                      decoration: const InputDecoration(
                        labelText: "Usuário",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: TextField(
                      controller: passwordController,
                      decoration: const InputDecoration(labelText: "Senha"),
                      obscureText: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: 300,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          final usuario = usuarioController.text;
                          final senha = passwordController.text;
                          var message = "Credenciais inválidas!";

                          if (usuario == "admin" && senha == "102030") {
                            message = "Seja bem vindo, Administrador!";
                          }

                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text(message)));
                        },
                        child: const Text("Entrar"),
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Text("Esqueci a senha"), Text("Cadastro")],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

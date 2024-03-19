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

    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final linkStyle =
        textTheme.bodyMedium?.copyWith(decoration: TextDecoration.underline);

    return Scaffold(
        appBar: AppBar(
            title: const Text("Autenticação"),
            backgroundColor: Theme.of(context).colorScheme.inversePrimary),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Precisa Ajuda?",
                          style: linkStyle,
                        ),
                        Text(
                          "Cadastre-se",
                          style: linkStyle,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text("2H3"), Text("PAMI"), Text("2024")],
              ),
            ],
          ),
        ));
  }
}

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Cadastro"),
            backgroundColor: Theme.of(context).colorScheme.inversePrimary),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 400,
                child: TextField(
                  decoration: InputDecoration(labelText: "Nome"),
                ),
              ),
              const SizedBox(
                width: 400,
                child: TextField(
                  decoration: InputDecoration(labelText: "Email"),
                ),
              ),
              const SizedBox(
                width: 400,
                child: TextField(
                  decoration: InputDecoration(labelText: "Senha"),
                  obscureText: true,
                ),
              ),
              const SizedBox(
                width: 400,
                child: TextField(
                  decoration: InputDecoration(labelText: "Confirme a senha"),
                  obscureText: true,
                ),
              ),
              SizedBox(
                width: 425,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          onPressed: () {}, child: const Text("  Salvar  ")),
                      ElevatedButton(
                          onPressed: () {}, child: const Text("Cancelar"))
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

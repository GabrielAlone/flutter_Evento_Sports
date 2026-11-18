import 'package:flutter/material.dart';

class SegundaTela extends StatelessWidget {
  // Variável que recebe o nome enviado
  final String nome;
  // Variável que recebe o email enviado
  final num quantidade;

  const SegundaTela({
    super.key,
    // required obriga receber valor
    required this.nome,
    //required obriga receber valor
    required this.quantidade,
  });


  // Método responsável por voltar
  void voltarTela(
    BuildContext context) {
    // fecha tela atual
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Segunda Tela",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            // Mostra o nome recebido
            Text(
              "Organizador: $nome",
              style:
                  const TextStyle(fontSize: 25),
            ),
            // Mostra o emial recebido
            Text("Times: $quantidade",
              style:
                  const TextStyle(fontSize: 25),
            ),

            const SizedBox(height: 20),


            ElevatedButton(
              onPressed: () {
                voltarTela(context);
              },
                child: const Text(
                "Voltar",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
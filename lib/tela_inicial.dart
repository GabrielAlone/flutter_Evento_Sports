import 'package:flutter/material.dart';
import 'segunda_tela.dart';

class TelaInicial extends StatelessWidget {
  TelaInicial({super.key});

  final nome = TextEditingController();
  final quantidade = TextEditingController();

  void abrirSegundaTela(BuildContext context) {
    Navigator.push(
      // contexto atual do aplicativo
      context,
      // informa qual tela será aberta
      MaterialPageRoute(
      builder: (context)
      => SegundaTela(
        // envia o texto digitado
        nome: nome.text,
        // envia o texto digitado
        quantidade: int.parse(quantidade.text),
      ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tela Inicial",
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nome,
              keyboardType: TextInputType.number,
              decoration:
                const InputDecoration(
                  labelText:
                      "Nome Do Organizador",
                ),
            ),

            TextField(
              controller: quantidade,
              keyboardType: TextInputType.number,
              decoration:
                  const InputDecoration(
                    labelText:
                        "Quantidade de Times",
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    abrirSegundaTela(
                      context
                    );
                  },
                  child: const Text("Enviar"),
                ),
          ],
        ),
      ),
    );
  }
}
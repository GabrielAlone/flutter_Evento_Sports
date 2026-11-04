import 'package:flutter/material.dart';
import 'segunda_tela.dart';

class TelaInicial extends StatelessWidget {

  const TelaInicial({super.key});

  // Método criado para abrir a proxima tela
  // Recebe o contexto da aplicação
  void abrirSegundaTela(BuildContext context) {
    // Navigator é responsável pela navegação
    // push() abre uma nova tela
    Navigator.push(
      // contexto atual do aplicativo
      context,
      // informa qual tela será aberta
      MaterialPageRoute(
      builder: (context)
      // abre SegundaTela
      => const SegundaTela(),
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
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            abrirSegundaTela(context);
          },
          child: const Text(
            "Abrir segunda tela",
          ),
        ),
      ),
    );
  }
}
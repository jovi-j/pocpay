import "package:flutter/material.dart";

class PagamentoScreen extends StatelessWidget {
  const PagamentoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Pagar"),
        ),
        body: const Center(
            child: Text(
          "Todo: Aceitar Pix e Transferência entre contas.",
          style: TextStyle(fontStyle: FontStyle.italic),
        )));
  }
}

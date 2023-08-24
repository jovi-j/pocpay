import "package:flutter/material.dart";
import "package:pocpay/features/pagamento/pagamento.dart";

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  double saldo = 120.00;
  String exibicaoSaldo = "******";
  bool mostrandoSaldo = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("PocPay"),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.only(top: 20, left: 20),
        children: [
          Row(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Olá fulano!",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Saldo: R\$ $exibicaoSaldo",
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 60, top: 20),
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      mostrandoSaldo
                          ? exibicaoSaldo = saldo.toString()
                          : exibicaoSaldo = "******";
                      mostrandoSaldo = !mostrandoSaldo;
                    });
                  },
                  child: Text(mostrandoSaldo ? "Exibir Saldo" : "Ocultar Saldo",
                      style: const TextStyle(color: Colors.green)),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: const Icon(Icons.attach_money),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PagamentoScreen(),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(color: Colors.green),
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            backgroundColor: Colors.green,
            label: "Pagar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: "Carteira",
          ),
        ],
      ),
    );
  }
}

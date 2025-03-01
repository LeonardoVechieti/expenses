import 'package:flutter/material.dart';
import 'models/transaction.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Despesas Pessoais'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: const Card(
                color: Colors.blue,
                elevation: 5,
                child: Text('Grafico'),
              ),
            ),
            Column(
              children: _transactions.map((tr) {
                return Card(
                  child: Text(tr.title),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}

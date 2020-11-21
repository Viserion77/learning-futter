import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: ListaTransferencias(),
        appBar: AppBar(
          title: Text('Transferências'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),
    ),
  );
}

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemTransferencia(Transferencia(1, 2)),
        ItemTransferencia(Transferencia(3, 4)),
        ItemTransferencia(Transferencia(5, 6)),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {

  final Transferencia _transferencia;
  const ItemTransferencia(this._transferencia);


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }

}

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}
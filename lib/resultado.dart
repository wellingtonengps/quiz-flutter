import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacaoTotal;

  Resultado({
    @required this.pontuacaoTotal,
  });

  String get fraseResultado {
    if (pontuacaoTotal == 0) {
      return 'Pontuação: $pontuacaoTotal \n Vish, sabe nada em!';
    } else if (pontuacaoTotal == 10) {
      return 'Só uma kkkk';
    } else if (pontuacaoTotal == 20) {
      return 'Tá na média irmão';
    } else {
      return 'Peferct !!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        fraseResultado,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}

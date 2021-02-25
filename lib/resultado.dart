import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacaoTotal;
  final void Function() quandoReiniciar;

  Resultado({
    @required this.pontuacaoTotal,
    @required this.quandoReiniciar,
  });

  String get fraseResultado {
    if (pontuacaoTotal < 3) {
      return 'Pontuação: $pontuacaoTotal \n Estude um pouco mais!';
    } else if (pontuacaoTotal >= 3 && pontuacaoTotal <= 5) {
      return 'Pontuação: $pontuacaoTotal \n Você bem!';
    } else {
      return 'Pontuação: $pontuacaoTotal \n Exelente!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
        ),
        SizedBox(height: 50),
        RaisedButton(
          onPressed: quandoReiniciar,
          child: Text(
            'Reiniciar',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ],
    );
  }
}

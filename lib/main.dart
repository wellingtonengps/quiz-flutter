import 'package:flutter/material.dart';
import 'package:quiz/questao.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a cor favorita?',
      'Qual é o animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sobre Wellington Responda'),
        ),
        body: Column(
          children: [
            Questao(perguntas[perguntaSelecionada]),
            RaisedButton(
                child: Text('Resposta 1'),
                onPressed: () {
                  setState(() {
                    perguntaSelecionada++;
                  });
                  print(perguntaSelecionada);
                  print('Pergurta respondida');
                }),
            RaisedButton(
                child: Text('Resposta 1'),
                onPressed: () {
                  setState(() {
                    perguntaSelecionada++;
                  });
                  print(perguntaSelecionada);
                  print('Pergurta respondida');
                }),
            RaisedButton(
                child: Text('Resposta 1'),
                onPressed: () {
                  setState(() {
                    perguntaSelecionada++;
                  });
                  print(perguntaSelecionada);
                  print('Pergurta respondida');
                }),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

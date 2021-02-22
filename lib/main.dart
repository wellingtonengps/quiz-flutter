import 'package:flutter/material.dart';
import 'package:quiz/questao.dart';
import 'package:quiz/resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  void respoder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  var perguntaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a cor favorita?',
        'respostas': [
          'Preto',
          'Vermelho',
          'Verde',
          'Amarelo',
        ],
      },
      {
        'texto': 'Qual é o animal favorito?',
        'respostas': [
          'Cachorro',
          'Gato',
          'Papagaio',
          'Águia',
        ],
      },
      {
        'texto': 'Qual é a músiva favorito?',
        'respostas': [
          'Slow Dancing in Dark',
          'Phograph',
          'all of me',
          'Monster',
        ],
      },
    ];

    List<Widget> respostas = [];

    for (String textoResp in perguntas[perguntaSelecionada]['respostas']) {
      respostas.add(Resposta(textoResp, respoder));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Sobre Wellington Responda'),
        ),
        body: Column(
          children: [
            Questao(perguntas[perguntaSelecionada]['texto']),
            ...respostas,
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

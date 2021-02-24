import 'package:flutter/material.dart';
import 'package:quiz/questionario.dart';
import 'package:quiz/resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  var pontuacaoTotal = 0;

  final perguntas = const [
    {
      'texto': 'Qual é a cor favorita?',
      'respostas': [
        {'texto': 'Vermelho', 'pontuação': 5},
        {'texto': 'Preto', 'pontuação': 10},
        {'texto': 'Verde', 'pontuação': 5},
        {'texto': 'Amarelo', 'pontuação': 5},
      ],
    },
    {
      'texto': 'Qual é o animal favorito?',
      'respostas': [
        {'texto': 'Cachorro', 'pontuação': 5},
        {'texto': 'Gato', 'pontuação': 10},
        {'texto': 'Papagaio', 'pontuação': 5},
        {'texto': 'Águia', 'pontuação': 10},
      ],
    },
    {
      'texto': 'Qual é a músiva favorito?',
      'respostas': [
        {'texto': 'Slow Dancing in Dark', 'pontuação': 5},
        {'texto': 'Phograph', 'pontuação': 10},
        {'texto': 'all of me', 'pontuação': 5},
        {'texto': 'Monster', 'pontuação': 10},
      ],
    },
  ];

  void responder(int pontuacao) {
    if (temPerguntasSelecionadas) {
      setState(() {
        perguntaSelecionada++;
        pontuacaoTotal += pontuacao;
      });
    }
    print(pontuacaoTotal);
  }

  bool get temPerguntasSelecionadas {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Sobre Wellington Responda'),
        ),
        body: temPerguntasSelecionadas
            ? Questionario(
                perguntaSelecionada: perguntaSelecionada,
                perguntas: perguntas,
                quandoResponder: responder,
              )
            : Resultado(pontuacaoTotal: pontuacaoTotal),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

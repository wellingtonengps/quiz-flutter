import 'package:flutter/material.dart';
import 'package:quiz/questionario.dart';
import 'package:quiz/resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  var pontuacaoTotal = 0;

  final perguntas = const [
    {
      'texto':
          '1. Qual é o comando git que baixa seu repositório do GitHub para o seu computador?',
      'respostas': [
        {'texto': 'git push', 'pontuação': 0},
        {'texto': 'git fork', 'pontuação': 0},
        {'texto': 'git clone', 'pontuação': 1},
        {'texto': 'git commit', 'pontuação': 0},
      ],
    },
    {
      'texto':
          '2. Qual é o oposto de git clone, em vez de baixar seu código do GitHub, envia suas alterações e o código de volta para o GitHub?',
      'respostas': [
        {'texto': 'git push', 'pontuação': 1},
        {'texto': 'git push', 'pontuação': 0},
        {'texto': 'git upload', 'pontuação': 0},
        {'texto': 'git status', 'pontuação': 0},
      ],
    },
    {
      'texto':
          '3. Como você verifica o estado do seu repositório git local desde seu último commit?',
      'respostas': [
        {'texto': 'git check', 'pontuação': 0},
        {'texto': 'git status', 'pontuação': 1},
        {'texto': 'git commit ', 'pontuação': 0},
        {'texto': 'git diff', 'pontuação': 0},
      ],
    },
    {
      'texto': '4. Como você prepara arquivos para um commit?',
      'respostas': [
        {'texto': 'git stage', 'pontuação': 0},
        {'texto': 'git commit', 'pontuação': 0},
        {'texto': 'git add', 'pontuação': 1},
        {'texto': 'git reset', 'pontuação': 0},
      ],
    },
    {
      'texto':
          '5. O que é um atalho para preparar todas as alterações que você tem?',
      'respostas': [
        {'texto': 'git commit add .', 'pontuação': 0},
        {'texto': 'git commit .', 'pontuação': 0},
        {'texto': 'git add .', 'pontuação': 1},
        {'texto': 'git push -am "Message"', 'pontuação': 0},
      ],
    },
    {
      'texto': '6. Como você fornece uma mensagem de commit para um commit?',
      'respostas': [
        {'texto': 'git message "I am coding"', 'pontuação': 0},
        {'texto': 'git add "I am coding"', 'pontuação': 0},
        {'texto': 'git commit "I am coding"', 'pontuação': 0},
        {'texto': 'git commit -m "I am coding"', 'pontuação': 1},
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
  }

  void reiniciarQuestionario() {
    setState(() {
      perguntaSelecionada = 0;
      pontuacaoTotal = 0;
    });
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
          title: Text('Quiz Git'),
        ),
        body: temPerguntasSelecionadas
            ? Questionario(
                perguntaSelecionada: perguntaSelecionada,
                perguntas: perguntas,
                quandoResponder: responder,
              )
            : Resultado(
                pontuacaoTotal: pontuacaoTotal,
                quandoReiniciar: reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

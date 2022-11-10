import 'package:flutter/material.dart';

void main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  var pergunstaSelecionada = 0;
  // componente stateles não pode ser trabalhado com 
  // valore modificaveis por ser um componente que só 
  // trabalha com valores finais

  PerguntaApp({Key? key}) : super(key: key);

  void responder() {
    pergunstaSelecionada++;
    print('Pergunta Respondidada  $pergunstaSelecionada');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é a seu animal favorito?',
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Projeto Perguntas'),
      ),
      body: Column(
        children: <Widget>[
          Text(perguntas.elementAt(0)),
          ElevatedButton(
            onPressed: responder,
            child: Text('Resposta 1'),
          ),
          ElevatedButton(
            onPressed: responder,
            child: Text('Resposta 2'),
          ),
          ElevatedButton(
            onPressed: responder,
            child: Text('Resposta 3'),
          )
        ],
      ),
    ));
  }
}

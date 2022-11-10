import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const PerguntaApp());

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({Key? key}) : super(key: key);

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
            onPressed: () {},
            child: Text('Resposta 1'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Resposta 2'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Resposta 3'),
          )
        ],
      ),
    ));
  }
}

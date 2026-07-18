import 'package:flutter/material.dart';
import '../models/question_model.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int perguntaAtual = 0;
  int pontuacao = 0;

  void responder(int indice) {
    bool acertou = perguntas[perguntaAtual].respostaCorreta == indice;
    if (acertou) {
      pontuacao++;
    }

    setState(() {
      perguntaAtual++;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (perguntaAtual >= perguntas.length) {
      return Scaffold(
        appBar: AppBar(title: const Text('Fim de Jogo')),
        body: Center(
          child: Text('Você fez $pontuacao de ${perguntas.length} pontos! ❤️',
              style: const TextStyle(fontSize: 24)),
        ),
      );
    }

    final questao = perguntas[perguntaAtual];

    return Scaffold(
      appBar: AppBar(title: Text('Pergunta sobre: ${questao.irmao}')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Pergunta ${perguntaAtual + 1}/${perguntas.length}',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            Text(questao.pergunta,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
           ...List.generate(questao.opcoes.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: ElevatedButton(
                  onPressed: () => responder(index),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(questao.opcoes[index], style: const TextStyle(fontSize: 18)),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

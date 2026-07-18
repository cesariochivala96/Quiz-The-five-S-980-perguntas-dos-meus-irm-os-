class Question {
  final String pergunta;
  final List<String> opcoes;
  final int respostaCorreta; // 0, 1, 2, 3
  final String irmao; // "Mara", "Leo", etc

  Question({
    required this.pergunta,
    required this.opcoes,
    required this.respostaCorreta,
    required this.irmao,
  });
}

// AQUI VAI A LISTA DE PERGUNTAS DOS 5 IRMÃOS
List<Question> perguntas = [
  Question(
    pergunta: 'Qual é a comida favorita da Mara?',
    opcoes: ['Pizza', 'Feijoada', 'Sushi', 'Churrasco'],
    respostaCorreta: 1,
    irmao: 'Mara',
  ),
  Question(
    pergunta: 'Qual cor o Leo mais gosta?',
    opcoes: ['Azul', 'Verde', 'Preto', 'Vermelho'],
    respostaCorreta: 2,
    irmao: 'Leo',
  ),
  Question(
    pergunta: 'Qual o sonho da Ana?',
    opcoes: ['Ser médica', 'Viajar o mundo', 'Ter uma empresa', 'Ser cantora'],
    respostaCorreta: 1,
    irmao: 'Ana',
  ),
  Question(
    pergunta: 'O que o Pedro odeia?',
    opcoes: ['Segunda-feira', 'Abacaxi na pizza', 'Fila', 'Frio'],
    respostaCorreta: 0,
    irmao: 'Pedro',
  ),
  Question(
    pergunta: 'Qual o apelido da Ju?',
    opcoes: ['Jujuba', 'Ju', 'Jujuca', 'Julinha'],
    respostaCorreta: 1,
    irmao: 'Ju',
  ),
];

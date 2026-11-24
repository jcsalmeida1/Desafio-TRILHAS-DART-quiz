import 'dart:io';

import 'package:desafiodart/desafiodart.dart' as desafiodart;

void main() {
  const letras = ['A', 'B', 'C', 'D'];
  int acertos = 0;

  print(
    '========= Bem-vindo ao Quiz sobre Filmes, Séries e Cultura Pop! =========',
  );
  print(
    'Responda às perguntas escolhendo a alternativa correta (A, B, C ou D).',
  );
  print(
    '-------------------------------------------------------------------------',
  );

  print('');

  // Identificação do jogador
  print('Escreva o seu nome:');
  final nomeDigitado = stdin.readLineSync();

  final nome = (nomeDigitado == null || nomeDigitado.trim().isEmpty)
      ? 'Jogador'
      : nomeDigitado.trim();

  print(
    '-------------------------------------------------------------------------',
  );
  print('Olá, seja bem-vindo(a), $nome! Vamos começar o quiz!');
  print(
    'Você terá um total de ${questoes.length} perguntas para responder. Boa sorte!',
  );
  print(
    '-------------------------------------------------------------------------',
  );

  // Percorre a lista de perguntas
  for (int i = 0; i < questoes.length; i++) {
    print('----------------------------------------------------------');
    print('Questão número ${i + 1}: ${questoes[i].enunciado}');
    print('Alternativas:');

    // Apresenta as alternativas
    for (int j = 0; j < questoes[i].alternativas.length; j++) {
      print('${letras[j]}) ${questoes[i].alternativas[j]}');
    }

    // Recebe e valida a resposta
    String resposta;

    while (true) {
      stdout.write('Digite sua resposta (A, B, C ou D): ');

      final entrada = stdin.readLineSync();

      if (entrada == null) {
        print('Entrada encerrada. Finalizando o quiz.');
        return;
      }

      resposta = entrada.trim().toUpperCase();

      if (letras.contains(resposta)) {
        break;
      }

      print('Resposta inválida!');
      print('Digite uma resposta válida (A, B, C ou D).');
    }

    // Verifica se a resposta está correta
    if (resposta == questoes[i].respostaCorreta) {
      print('Parabéns, $nome! Você acertou!');
      acertos++;
    } else {
      final indiceCorreto = letras.indexOf(questoes[i].respostaCorreta);

      print('Resposta incorreta!');
      print(
        'A resposta correta era '
        '${questoes[i].respostaCorreta}) '
        '${questoes[i].alternativas[indiceCorreto]}.',
      );
    }

    print('Pontuação atual: $acertos');
    print('');
  }

  // Resultado final
  print('=============================================');
  print('             RESULTADO FINAL');
  print('=============================================');

  print('Jogador: $nome');
  print('Pontuação final: $acertos de ${questoes.length} perguntas.');
  print('');

  // Mensagem conforme o desempenho
  if (acertos == questoes.length) {
    print('Parabéns, $nome! Você acertou todas as perguntas!');
  } else if (acertos >= (questoes.length * 0.7).ceil()) {
    print('Muito bom, $nome! Você acertou a maioria das perguntas!');
  } else if (acertos >= (questoes.length * 0.4).ceil()) {
    print('Bom trabalho, $nome! Continue estudando e tente novamente!');
  } else {
    print('Não desista, $nome! Continue estudando e tente novamente!');
  }

  print('');
  print('Obrigado por participar do nosso quiz!');
  print('=============================================');
}

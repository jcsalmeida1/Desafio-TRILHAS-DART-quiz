import 'package:desafiodart/desafiodart.dart';
import 'package:test/test.dart';

void main() {
  group('Testes do Quiz de Filmes e Séries', () {
    test('O quiz deve possuir pelo menos cinco perguntas', () {
      expect(questoes.length, greaterThanOrEqualTo(5));
    });

    test('Cada pergunta deve possuir quatro alternativas', () {
      for (final questao in questoes) {
        expect(questao.alternativas.length, 4);
      }
    });

    test('Todas as respostas corretas devem ser válidas', () {
      const letras = ['A', 'B', 'C', 'D'];

      for (final questao in questoes) {
        expect(letras, contains(questao.respostaCorreta));
      }
    });

    test('Todas as perguntas devem possuir enunciado', () {
      for (final questao in questoes) {
        expect(questao.enunciado.trim().isNotEmpty, isTrue);
      }
    });
  });
}

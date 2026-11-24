class Questao {
  final String enunciado;
  final List<String> alternativas;
  final String respostaCorreta;

  const Questao({
    required this.enunciado,
    required this.alternativas,
    required this.respostaCorreta,
  });
}
const questoes =[


  Questao(
    enunciado: 'Qual é o nome do protagonista da saga Harry Potter na vida real?',
    alternativas: ['Rupert Grint ', 'Daniel Radcliffe', 'Tom Felton', 'Matthew Lewis'],
    respostaCorreta: 'B',
  ),
  Questao(
    enunciado: 'Em qual série aparece o personagem Eleven (Onze)?',
    alternativas: ['Stranger Things', 'The Witcher', 'The Umbrella Academy', 'The Mandalorian'],
    respostaCorreta: 'A',
  
  
  ),
  
  Questao(
    enunciado: 'Qual é o nome do protagonista da série "Breaking Bad"?',
    alternativas: ['Jesse Pinkman', 'Walter White', 'Saul Goodman', 'Gus Fring'],
    respostaCorreta: 'B',
  ),
  Questao(
    enunciado: 'Qual é o nome do protagonista da série "Game of Thrones"?',
    alternativas: ['Arya Stark', 'Tyrion Lannister', 'Daenerys Targaryen', 'Jon Snow'],
    respostaCorreta: 'D',
  ),
   Questao(
    enunciado: 'Qual é o nome do reino onde vive Elsa, no filme Frozen?',
    alternativas: ['Arendelle', 'Narnia', 'Wakanda', 'Agrabah'],
    respostaCorreta: 'A',
  ),

 Questao(
    enunciado: 'Qual é o nome do brinquedo cowboy de Toy Story?',
    alternativas: ['Rex', 'Buzz Lightyear', 'Woody', 'Slinky Dog'],
    respostaCorreta: 'C',
  );






]

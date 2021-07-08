import '../materia.dart';
import '../pergunta.dart';

final dummySubject = Materia(
  'Teste',
  'assets/images/iconesDeMateria/QuimiquITA_bg.png',
  [
    Pergunta(
      pergunta: 'Clique 1',
      temImagem: false,
      temExplicacao: true,
      explicacao: 'explicacao top',
      respostas: ['1', '2', '3', '4'],
      correto: 0,
    ),
    Pergunta(
      pergunta: 'Clique 2',
      temImagem: false,
      temExplicacao: false,
      respostas: ['1', '2', '3', '4'],
      correto: 1,
    ),
    Pergunta(
      pergunta: 'Clique 3',
      temImagem: false,
      temExplicacao: false,
      respostas: ['1', '2', '3', '4'],
      correto: 2,
    ),
    Pergunta(
      pergunta: 'Clique 4',
      temImagem: false,
      temExplicacao: false,
      respostas: ['1', '2', '3', '4'],
      correto: 3,
    ),
  ],
);

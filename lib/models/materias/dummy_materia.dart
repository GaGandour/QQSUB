import '../materia.dart';

final dummySubject = Materia(
  'Teste',
  'assets/images/iconesDeMateria/QuimiquITA_bg.png',
  [
    {
      'pergunta':
          'O seguinte símbolo representa o descarte adequado de que polímero?',
      'tem imagem': true,
      'path imagem': 'assets/images/polimeros/R7.png',
      'tem explicacao': true,
      'explicacao':
          'O símbolo de reciclagem com o número 7 se refere aos polímeros que não o PET, PEAD, PVC, PEBD, PP e PS.',
      'respostas': [
        'PET',
        'PP',
        'PS',
        '\"Outros\"',
      ],
      'correto': 3,
    },
    {
      'pergunta': 'Clique 1',
      'tem imagem': false,
      'tem explicacao': true,
      'explicacao': 'explicacao top',
      'respostas': ['1', '2', '3', '4'],
      'correto': 0,
    },
    {
      'pergunta': 'Clique 2',
      'tem imagem': false,
      'tem explicacao': false,
      'respostas': ['1', '2', '3', '4'],
      'correto': 1,
    },
    {
      'pergunta': 'Clique 3',
      'tem imagem': false,
      'tem explicacao': false,
      'respostas': ['1', '2', '3', '4'],
      'correto': 2,
    },
    {
      'pergunta': 'Clique 4',
      'tem imagem': false,
      'tem explicacao': false,
      'respostas': ['1', '2', '3', '4'],
      'correto': 3,
    },
  ],
);

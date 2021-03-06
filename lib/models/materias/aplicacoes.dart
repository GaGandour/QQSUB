import '../materia.dart';
import '../pergunta.dart';

final aplicacoes1 = Materia(
  'Aplicações de compostos \u2160',
  'assets/images/iconesDeMateria/QQSUB_aplicacao1.png',
  [
    Pergunta(
      pergunta: 'Qual destes compostos é o gás dos pântanos?',
      temImagem: false,
      temExplicacao: true,
      explicacao:
          'O CH\u2084 é conhecido também como gás dos pântanos, gás do lixo, e gás do efeito estufa, além de ser o gás natural utilizado no GNV (Gás Natural Veicular).',
      respostas: [
        'C\u2082H\u2086',
        'C\u2082H\u2084',
        'C\u2083H\u2088',
        'CH\u2084'
      ],
      correto: 3,
    ),
    Pergunta(
      pergunta: 'Qual destes compostos tipicamente compõem o GLP?',
      temImagem: false,
      temExplicacao: true,
      explicacao:
          'O GLP (Gás liquefeito de petróleo), que é o gás que há dentro dos butijões de gás, é composto principalmente de propano (C\u2083H\u2088) e butano (C\u2084H\u2081\u2080).',
      respostas: [
        'C\u2083H\u2088O\u2083',
        'C\u2086H\u2086',
        'C\u2083H\u2088',
        'N.D.A.'
      ],
      correto: 2,
    ),
    Pergunta(
      pergunta:
          'Qual destes compostos é conhecido por ser um hormônio de amadurecimento de frutos?',
      temImagem: false,
      temExplicacao: false,
      respostas: ['C\u2082H\u2084', 'C\u2086H\u2086', 'O\u2082', 'Tolueno'],
      correto: 0,
    ),
    Pergunta(
      pergunta: 'Qual destes compostos é utilizado como gás de maçarico?',
      temImagem: false,
      temExplicacao: true,
      explicacao:
          'O etino ou acetileno (C\u2082H\u2082), além de mimetizar a ação do C\u2082H\u2084 como hormônio de amadurecimento de frutas, é utilizado como gás de maçarico.',
      respostas: [
        'O\u2082',
        'C\u2082H\u2082',
        'C\u2083H\u2088O\u2083',
        'H\u2082'
      ],
      correto: 1,
    ),
    Pergunta(
      pergunta:
          'Qual destes compostos é utilizado na produção de TNT e como solvente de cola de sapato?',
      temImagem: false,
      temExplicacao: false,
      respostas: [
        'Benzeno',
        'Tolueno',
        'o-xileno',
        'p-xileno',
      ],
      correto: 1,
    ),
    Pergunta(
      pergunta:
          'Qual destes compostos NÃO está tipicamente presente na gasolina?',
      temImagem: false,
      temExplicacao: false,
      respostas: [
        'H\u2082SO\u2084',
        'Isoctano',
        'Etanol',
        'Heptano',
      ],
      correto: 0,
    ),
    Pergunta(
      pergunta:
          'Qual destes compostos é utilizado na produção de gás lacrimogênio?',
      temImagem: false,
      temExplicacao: false,
      respostas: [
        'Brometo de Benzila',
        'NH\u2083',
        'Cloroetano',
        'Cloreto de Metila',
      ],
      correto: 0,
    ),
    Pergunta(
      pergunta: 'Qual dessas opções não tem relação com o metanol?',
      temImagem: false,
      temExplicacao: true,
      explicacao:
          'O metanol (CH\u2083OH) é tóxico, usado como solvente e é um combustivel que se caracteriza por uma chama invisível. Contudo, a substância presente nas bebidas alcoólicas é o etanol (C\u2082H\u2085OH).',
      respostas: [
        'Solvente',
        'Tóxico',
        'Fogo Invisível',
        'Embriaguez',
      ],
      correto: 3,
    ),
    Pergunta(
      pergunta: 'Qual dessas opções é o antídoto do metanol?',
      temImagem: false,
      temExplicacao: true,
      explicacao:
          'O etanol (C\u2082H\u2085OH), além de ser usado em bebidas alcoólicas, combustíveis, álcool-gel para limpeza, cosméticos e como solvente, é o antídoto do metanol (CH\u2083OH), que é tóxico.',
      respostas: [
        'Propanol',
        'Vinagre',
        'Etanol',
        'Glicerol',
      ],
      correto: 2,
    ),
    Pergunta(
      pergunta:
          'Qual desses compostos é utilizado para limpeza de eletrônicos?',
      temImagem: false,
      temExplicacao: false,
      respostas: [
        'Propan-2-ol',
        'Etanol',
        'Propanol',
        'Etanodiol',
      ],
      correto: 0,
    ),
    Pergunta(
      pergunta:
          'Qual desses compostos é utilizado como aditivo à água de radiadores de veículos?',
      temImagem: false,
      temExplicacao: true,
      explicacao:
          'Além de atitivo para água de radiador, o Etilenoglicol, ou Etano-1,2-diol, é um umectante na indústria de alimentos e é utilizado na produção de cosméticos e de polímeros.',
      respostas: [
        'Propan-2-ol',
        'Etilenoglicol',
        'NaCl',
        'MgCl\u2082',
      ],
      correto: 1,
    ),
    Pergunta(
      pergunta:
          'Líquido viscoso e denso, usado na indústria de alimentos, de cosméticos, de higiene pessoal e de explosivos?',
      temImagem: false,
      temExplicacao: true,
      explicacao: 'Além disso tudo, é subproduto da fabricação do sabão!',
      respostas: [
        'Propan-2-ol',
        'Etilenoglicol',
        'H\u2082SO\u2084',
        'Glicerina',
      ],
      correto: 3,
    ),
    Pergunta(
      pergunta:
          'Qual dessas funções orgânicas está presente no primeiro antisséptico comercializado?',
      temImagem: false,
      temExplicacao: true,
      explicacao:
          'O primeiro antisséptico foi o fenol (C\u2086H\u2085OH), um sólido utilizado na produção de polímeros e explosivos.',
      respostas: [
        'Álcool',
        'Éster',
        'Fenol',
        'Éter',
      ],
      correto: 2,
    ),
    Pergunta(
      pergunta:
          'Qual dessas funções orgânicas está presente no primeiro anestésico cirúrgico?',
      temImagem: false,
      temExplicacao: true,
      explicacao:
          'O primeiro anestésico cirúrgico foi o éter comum (C\u2082H\u2085OC\u2082H\u2085), também chamado de etoxietano, éter dietílico, éter dos hospitais, éter sulfúrico ou simplesmente éter. Também é usado como solvente.',
      respostas: [
        'Álcool',
        'Éster',
        'Fenol',
        'Éter',
      ],
      correto: 3,
    ),
    Pergunta(
      pergunta: 'Qual dessas utilidades é atribuída ao MTBE?',
      temImagem: false,
      temExplicacao: true,
      explicacao:
          'O MTBE (ou metil-terc-butil-éter) é utilizado como antidetonante na gasolina.',
      respostas: [
        'Anti-detonante',
        'Cosméticos',
        'Solvente',
        'Umectante',
      ],
      correto: 0,
    ),
    Pergunta(
      pergunta:
          'Para o vinagre ser considerado vinagre, deve ter, em sua composição, pelo menos 4\% de...',
      temImagem: false,
      temExplicacao: false,
      respostas: [
        'NaCl',
        'Água',
        'Ác. Acético',
        'Ác. fosfórico',
      ],
      correto: 2,
    ),
    Pergunta(
      pergunta:
          'O etanoato de etila é utilizado para a produção de um produto relacionado a...',
      temImagem: false,
      temExplicacao: true,
      explicacao:
          'O etanoato de etila é utilizado na produção de essência de maçã. Alguns outros ésteres também podem conferir aromas artificiais.',
      respostas: [
        'Culinária',
        'Limpeza',
        'Explosivos',
        'Todos',
      ],
      correto: 0,
    ),
    Pergunta(
      pergunta: 'Essa molécula é utilizada para a produção do quê?',
      temImagem: true,
      pathImagem: 'assets/images/aplicacoes/Acido_Tereftalico.png',
      temExplicacao: true,
      explicacao:
          'Essa molécula é o ácido tereftálico, utilizado na produção do PET (PolyEthylene Terephthalate ou Politereftalato de etila, em português).',
      respostas: [
        'PVC',
        'PET',
        'Nailon',
        'Kevlar',
      ],
      correto: 1,
    ),
    Pergunta(
      pergunta: 'Qual desses ácidos é usado na produção de Nailon 66?',
      temImagem: false,
      temExplicacao: false,
      respostas: [
        'Maleico',
        'Glutárico',
        'Fumárico',
        'Adípico',
      ],
      correto: 3,
    ),
    Pergunta(
      pergunta: 'Essa molécula está relacionada com...',
      temImagem: true,
      pathImagem: 'assets/images/aplicacoes/Trinitrotolueno.png',
      temExplicacao: true,
      explicacao:
          'Essa molécula é o famoso trinitrotolueno, carinhosamente apelidado de TNT.',
      respostas: [
        'Explosivos',
        'Culinária',
        'Limpeza',
        'Medicamentos',
      ],
      correto: 0,
    ),
  ],
);

final aplicacoes2 = Materia(
  'Aplicações de compostos \u2161',
  'assets/images/iconesDeMateria/QQSUB_aplicacao2.png',
  [
    Pergunta(
      pergunta:
          'Qual destes compostos é utilizado para fazer corantes e perfumes?',
      temImagem: false,
      temExplicacao: false,
      respostas: [
        'Hidrazina',
        'Salicilamida',
        'Anilina',
        'Amônia',
      ],
      correto: 2,
    ),
    Pergunta(
      pergunta:
          'Qual destes compostos é utilizado em combustíveis para foguetes?',
      temImagem: false,
      temExplicacao: false,
      respostas: [
        'Propano',
        'Isoctano',
        'Hidrazina',
        'Todas',
      ],
      correto: 2,
    ),
    Pergunta(
      pergunta: 'Qual destes compostos era utilizado no "lança perfume"?',
      temImagem: false,
      temExplicacao: false,
      respostas: [
        'Brometo de Benzila',
        'NH\u2083',
        'Cloroetano',
        'Cloreto de Metila',
      ],
      correto: 2,
    ),
    Pergunta(
      pergunta:
          'Qual destes compostos tem odor de alho, sendo inserido nos butijões de gás para gerar o cheiro característico"?',
      temImagem: false,
      temExplicacao: false,
      respostas: [
        'Anilina',
        'Tolueno',
        'Cresol',
        'Etanotiol',
      ],
      correto: 3,
    ),
    Pergunta(
      pergunta:
          'Qual destes ácidos causam a fadiga muscular, além de indicar cárie quando presente na placa dentária?',
      temImagem: false,
      temExplicacao: false,
      respostas: [
        'Malônico',
        'Lático',
        'Aspártico',
        'Tartárico',
      ],
      correto: 1,
    ),
    Pergunta(
      pergunta:
          'Qual destes é o monômero do polímero utilizado paara produzir copos plásticos e isopor?',
      temImagem: false,
      temExplicacao: false,
      respostas: [
        'Eteno',
        'Estireno',
        'Etino',
        'Veratrol',
      ],
      correto: 1,
    ),
    Pergunta(
      pergunta: 'O isômero S da seguinte molécula é utilizado em...',
      temImagem: true,
      pathImagem: 'assets/images/aplicacoes/Ibuprofeno.png',
      temExplicacao: true,
      explicacao:
          'Essa molécula é o Ácido 2-(4-isobutilfenil)-propanoico, mais conhecido como Ibuprofeno, vendido comercialmente sob a alcunha de "paracetamol".',
      respostas: [
        'Água de Radiador',
        'Cosméticos',
        'Remédios',
        'Alimentos',
      ],
      correto: 2,
    ),
    Pergunta(
      pergunta:
          """"Usado em explosivos e em tratamento de queimaduras." A descrição se aplica ao ácido:""",
      temImagem: false,
      temExplicacao: false,
      respostas: [
        'Butanoico',
        'Oxálico',
        'Pimélico',
        'Pícrico',
      ],
      correto: 3,
    ),
    Pergunta(
      pergunta: 'O Guaiacol é usado como um:',
      temImagem: false,
      temExplicacao: false,
      respostas: [
        'Expectorante',
        'Antisséptico',
        'Inceticida',
        'Explosivo',
      ],
      correto: 0,
    ),
    Pergunta(
      pergunta: 'O Veratrol é usado como um:',
      temImagem: false,
      temExplicacao: false,
      respostas: [
        'Expectorante',
        'Antisséptico',
        'Inceticida',
        'Explosivo',
      ],
      correto: 1,
    ),
    Pergunta(
      pergunta:
          'Qual destes é o principal componente do extrato da semente de baunilha?',
      temImagem: false,
      temExplicacao: false,
      respostas: [
        'Alanina',
        'Anilina',
        'Glicina',
        'Vanilina',
      ],
      correto: 3,
    ),
    Pergunta(
      pergunta: 'O hexaclorobenzeno, ou BHC, é usado como:',
      temImagem: false,
      temExplicacao: false,
      respostas: [
        'Expectorante',
        'Antisséptico',
        'Inceticida',
        'Explosivo',
      ],
      correto: 2,
    ),
    Pergunta(
      pergunta:
          'Qual dessas substâncias é usada para reduzir odores em cinemas e velórios?',
      temImagem: false,
      temExplicacao: true,
      explicacao:
          'Além disso tudo, é um excelente oxidante, bactericida potente e utilizado para esterilizar aparelhos cirúrgicos.',
      respostas: [
        'Ozônio',
        'Cloroetano',
        'Brometo de benzila',
        'Etanotiol',
      ],
      correto: 0,
    ),
    Pergunta(
      pergunta: 'Qual dessas substâncias é usada para limpeza doméstica?',
      temImagem: false,
      temExplicacao: true,
      explicacao:
          'O HCl também é utilizado para limpar pisos de concreto em geral.',
      respostas: [
        'H\u2083PO\u2084',
        'HCl',
        'H\u2082CO\u2083',
        'HNO\u2083',
      ],
      correto: 1,
    ),
    Pergunta(
      pergunta:
          'Qual dessas substâncias é usada na fabricação de explosivos, medicamentos e fertilizantes agrícolas?',
      temImagem: false,
      temExplicacao: false,
      respostas: [
        'H\u2083PO\u2084',
        'HCl',
        'H\u2082CO\u2083',
        'HNO\u2083',
      ],
      correto: 3,
    ),
    Pergunta(
      pergunta:
          'Qual dessas substâncias é responsável pelas "bolhas" na maioria das bebidas gaseificadas?',
      temImagem: false,
      temExplicacao: false,
      respostas: [
        'H\u2083PO\u2084',
        'HCl',
        'H\u2082CO\u2083',
        'HNO\u2083',
      ],
      correto: 2,
    ),
    Pergunta(
      pergunta:
          "Usado em antiácidos, antitranspitantes e em estações de tratamento de água (ETA's) como agente coagulante.",
      temImagem: false,
      temExplicacao: false,
      respostas: [
        'Al(OH)\u2083',
        'NH\u2083',
        'Zn(OH)\u2082',
        'Mg(OH)\u2082',
      ],
      correto: 0,
    ),
    Pergunta(
      pergunta:
          "Base solúvel muito utilizada na fabricação de fertilizantes e de alguns produtos de limpeza.",
      temImagem: false,
      temExplicacao: false,
      respostas: [
        'Al(OH)\u2083',
        'NH\u2083',
        'Zn(OH)\u2082',
        'Mg(OH)\u2082',
      ],
      correto: 1,
    ),
    Pergunta(
      pergunta: "Usado em pomadas para assaduras e em protetores solares.",
      temImagem: false,
      temExplicacao: false,
      respostas: [
        'Al(OH)\u2083',
        'NH\u2083',
        'Zn(OH)\u2082',
        'Mg(OH)\u2082',
      ],
      correto: 2,
    ),
    Pergunta(
      pergunta: "Usado como antiácido e como laxante.",
      temImagem: false,
      temExplicacao: true,
      explicacao: 'Mg(OH)\u2082 é o que compõe o famoso leite de magnésia!',
      respostas: [
        'Al(OH)\u2083',
        'NH\u2083',
        'Zn(OH)\u2082',
        'Mg(OH)\u2082',
      ],
      correto: 3,
    ),
  ],
);

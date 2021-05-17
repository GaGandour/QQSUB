import '../materia.dart';

import './aplicacoes.dart';
import './cor_de_compostos.dart';
import './ions_aquosos.dart';
import './miscelanea.dart';
import './nome_moleculas.dart';
import './teste_de_chama.dart';

final todasAsMaterias = Materia(
  'Geral',
  'assets/images/iconesDeMateria/QuimiquITA_geral.png',
  [
    ...testeDeChama.listaQuestoes,
    ...ionsAquosos.listaQuestoes,
    ...nomesMoleculas.listaQuestoes,
    ...aplicacoes.listaQuestoes,
    ...corCompostos.listaQuestoes,
    ...miscelanea.listaQuestoes,
  ],
);

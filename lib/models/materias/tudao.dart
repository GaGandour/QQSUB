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
    ...nomesMoleculas1.listaQuestoes,
    ...nomesMoleculas2.listaQuestoes,
    ...nomesMoleculas3.listaQuestoes,
    ...nomesMoleculas4.listaQuestoes,
    ...aplicacoes1.listaQuestoes,
    ...aplicacoes2.listaQuestoes,
    ...corCompostos1.listaQuestoes,
    ...corCompostos2.listaQuestoes,
    ...corCompostos3.listaQuestoes,
    ...miscelanea1.listaQuestoes,
    ...miscelanea2.listaQuestoes,
    ...miscelanea3.listaQuestoes,
  ],
);

import 'package:alacobe/janela_pesquisa/lista_sugestoes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'barra_pesquisa.dart';

class PaginaPesquisa extends StatelessWidget{
  final listaSugestoes = ListaSugestoes();

  @override
  Widget build(BuildContext context) {
    listaSugestoes.getSugestoesSalvas();
    return Scaffold(
      appBar: BarraPesquisa(context, listaSugestoes),
      body: Observer(builder: (_) => Column(children: listaSugestoes.sugestoes,)),
    );
  }
}

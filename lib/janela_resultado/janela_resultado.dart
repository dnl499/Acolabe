import 'package:alacobe/janela_principal/lista_lojas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';


class PaginaResultado extends StatelessWidget {
  final listaLojas = ListaLojas();
  final String pesquisaAll;
  final String pesquisaCategoria;

  PaginaResultado({this.pesquisaAll, this.pesquisaCategoria});

  @override
  Widget build(BuildContext context) {
    listaLojas.atualizarLista(filtroAll: pesquisaAll, filtroCategoria: pesquisaCategoria);
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(pesquisaAll ?? pesquisaCategoria),
          leading: FlatButton(onPressed: () => Navigator.pop(context), child: Icon(Icons.chevron_left)),
        ),
        body: Observer(builder: (_) => SingleChildScrollView(child: Column(children: listaLojas.listaLojas,),)),
      ),
    );
  }
}

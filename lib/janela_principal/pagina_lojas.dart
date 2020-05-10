import 'package:alacobe/janela_principal/barra_pesquisa.dart';
import 'package:alacobe/janela_principal/lista_categorias.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'lista_lojas.dart';

class PaginaLojas extends StatelessWidget{
  final listaLojas = ListaLojas();
  final listaCategorias = ListaCategorias();

  @override
  Widget build(BuildContext context) {
    listaCategorias.atualizarLista();
    listaLojas.atualizarLista();
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          BarraPesquisa(),
          SingleChildScrollView(
            child: Observer(builder: (_) => Row(children: listaCategorias.categorias,)),
            scrollDirection: Axis.horizontal,
          ),
          Observer(builder: (_) => Column(children: listaLojas.listaLojas,),),
        ],
      ),
    );
  }
}

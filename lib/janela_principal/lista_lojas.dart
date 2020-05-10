import 'dart:convert';

import 'package:alacobe/janela_principal/item_loja.dart';
import 'package:alacobe/janela_principal/lista_categorias.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';

part 'lista_lojas.g.dart';

class ListaLojas = ListaLojasBase with _$ListaLojas;

abstract class ListaLojasBase with Store{
  final dio = Dio();
  final url = "http://www.mocky.io/v2/5eac692c3300003941dfe3d8";

  @observable
  List<Widget> listaLojas = <Widget>[];

  @action
  adicionarItem(List<Widget> lista) => listaLojas = lista;

  @action
  limparLista() => listaLojas = <Widget>[];

  atualizarLista({String filtroAll, String filtroCategoria}) async {
    int id = 0;
    int tamanho = 0;
    String categorias = "";
    String descricao = "";
    String logo = "";
    String nomeFantasia = "";
    Response respostaApi = await dio.get(url);
    Map<String, dynamic> jsonResposta = jsonDecode(respostaApi.toString());
    List<dynamic> listaCategorias;
    List<dynamic> items = jsonResposta["items"];
    List<Widget> lista = <Widget>[];
    items.forEach((item){
      bool adicionar = true;
      categorias = "";
      descricao = item["description"];
      id = item["id"];
      listaCategorias = item["categories"];
      logo = item["logo"];
      nomeFantasia = item["fantasy_name"];
      tamanho = item["size"];
      listaCategorias.forEach((categoria){
        categorias += categoria["name"] + ",";
      });
      if (categorias.isNotEmpty) categorias = categorias.substring(0, categorias.length - 1);
      categorias = categorias.replaceAll(",", ", ");
      print(categorias);
      if (filtroAll != null) {
        filtroAll.split(" ").forEach((filtro) => adicionar &= nomeFantasia.contains(filtro));
        filtroAll.split(" ").forEach((filtro) => adicionar |= categorias.contains(filtro));
      }
      else if (filtroCategoria != null) adicionar = categorias.contains(filtroCategoria);
      if (adicionar) lista.add(ItemLoja(id, tamanho, categorias, descricao, logo, nomeFantasia));
    });
    adicionarItem(lista);
  }
}

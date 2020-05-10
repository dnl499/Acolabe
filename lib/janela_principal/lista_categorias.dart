import 'dart:convert';

import 'package:alacobe/janela_principal/item_categoria.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';

part 'lista_categorias.g.dart';

class ListaCategorias = ListaCategoriasBase with _$ListaCategorias;

abstract class ListaCategoriasBase with Store{
  final dio = Dio();
  final url = "http://www.mocky.io/v2/5eac697c330000dc64dfe3db";

  @observable
  List<Widget> categorias = <Widget>[];
  
  @action
  adicionarItem(List<ItemCategoria> lista){
    print(lista.length);
    categorias = lista;
  }

  atualizarLista() async {
    int id = 0;
    String categoria = "";
    String imagem = "";
    String tags = "";
    Response respostaApi = await dio. get(url);
    Map<String, dynamic> jsonCategorias = jsonDecode(respostaApi.toString());
    List<dynamic> items = jsonCategorias["items"];
    List<ItemCategoria> listaCategorias = <ItemCategoria>[];
    items.forEach((item) {
      id = item["id"];
      categoria = item["name"] ?? "";
      imagem = item["image"] ?? "https://i.picsum.photos/id/403/200/150.jpg";
      tags = item["tags"] ?? "";
      listaCategorias.add(ItemCategoria(id, categoria, imagem, tags.split(" ")));
    });
    adicionarItem(listaCategorias);
  }
}

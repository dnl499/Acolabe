import 'package:alacobe/janela_pesquisa/lista_sugestoes.dart';
import 'package:flutter/material.dart';

class BarraPesquisa extends AppBar{
  BarraPesquisa(BuildContext context, ListaSugestoes sugestoes) : super(
    backgroundColor: Colors.white,
    leading: FlatButton(
      child: Icon(Icons.chevron_left, color: Colors.black,),
      onPressed: () => Navigator.pop(context),
    ),
    title: TextField(
      decoration: InputDecoration(
        hintText: "Pesquisar",
      ),
      style: TextStyle(
        shadows: <Shadow>[],
      ),
      onSubmitted: ((pesquisa) {
        sugestoes.addSugestao(pesquisa);
        Navigator.pushNamed(context, "/pesquisarPor/$pesquisa");
      }),
    ),
  );
}


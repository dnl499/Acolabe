import 'package:alacobe/janela_pesquisa/lista_sugestoes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Sugestao extends StatelessWidget{
  final String sugestao;
  final ListaSugestoes pai;

  Sugestao(this.sugestao, this.pai);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(Icons.refresh, color: Colors.grey,),
        FlatButton(
          child: Text(sugestao),
          onPressed: () => Navigator.pushNamed(context, "/pesquisarPor/$sugestao"),
        ),
        FlatButton(
          child: Icon(Icons.close, color: Colors.red,),
          onPressed: () {
            this.pai.removeSugestao(this.sugestao);
          },
        ),
      ],
    );
  }
}

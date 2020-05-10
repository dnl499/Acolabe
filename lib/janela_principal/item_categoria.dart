import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemCategoria extends StatelessWidget{
  final int id;
  final String categoria;
  final String imagem;
  final List<String> tags;
  final dio = Dio();

  ItemCategoria(this.id, this.categoria, this.imagem, this.tags);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              imagem,
              fit: BoxFit.fill,
              height: 100,
              width: 150,
            ),
          ),
          Text(categoria)
        ],
      ),
      onPressed: () => Navigator.pushNamed(context, "/pesquisarCategoria/$categoria"),
    );
  }
}

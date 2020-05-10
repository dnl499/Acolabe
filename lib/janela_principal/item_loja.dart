import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemLoja extends StatelessWidget{
  final int id;
  final int tamanho;
  final String categorias;
  final String descricao;
  final String logo;
  final String nomeFantasia;

  ItemLoja(
    this.id,
    this.tamanho,
    this.categorias,
    this.descricao,
    this.logo,
    this.nomeFantasia
  );

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            child: Image.network(logo, fit: BoxFit.fill,),
            height: screenWidth * 0.2,
            margin: EdgeInsets.only(right: 10),
            width: screenWidth * 0.2,
          ),
          Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          Text(nomeFantasia),
                          Text(categorias, maxLines: 2, softWrap: true, style: TextStyle(fontSize: 10),),
                        ],
                      ),
                      width: screenWidth * 0.58,
                    ),
                    Container(
                      color: Colors.red,
                      child: Column(
                        children: <Widget>[
                          Text(tamanho.toString()),
                          Text("...")
                        ],
                      ),
                    )
                  ],
                ),
                Text(descricao, style: TextStyle(fontSize: 10),),
              ],
            ),
            height: screenWidth * 0.2,
            width: screenWidth * 0.64,
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black26, offset: Offset(1, 1))
        ],
        color: Colors.white
      ),
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(top: 5),
      width: screenWidth * 0.9,
    );
  }
}

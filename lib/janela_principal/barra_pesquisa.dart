import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BarraPesquisa extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Icon(Icons.search, color: Colors.red,),
          Text("Pesquisar", style: TextStyle(color: Colors.grey),),
        ],
      ),
      onPressed: () => Navigator.pushNamed(context, "/pesquisa"),
    );
  }
}

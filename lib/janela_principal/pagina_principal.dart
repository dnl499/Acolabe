import 'package:alacobe/janela_principal/pagina_ativa.dart';
import 'navegador_inferior.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';


class PaginaPrincipal extends StatelessWidget {
  final paginaAtiva = PaginaAtiva();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Observer(builder: (_) => paginaAtiva.paginaAtiva),
        bottomNavigationBar: Observer(builder: (_) => NavegadorInferior(paginaAtiva)),
      ),
      margin: MediaQuery.of(context).padding,
    );
  }
}

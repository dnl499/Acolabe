import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
import 'pagina_lojas.dart';
part 'pagina_ativa.g.dart';

class PaginaAtiva = PaginaAtivaBase with _$PaginaAtiva;

abstract class PaginaAtivaBase with Store{
  @observable
  int paginaAtivaIndex = 0;

  @observable
  Widget paginaAtiva = PaginaLojas();

  @action
  setarPagina(int pagina) {
    paginaAtivaIndex = pagina;
    switch (pagina){
      case 0:
        paginaAtiva = PaginaLojas();
        break;
      case 1:
        paginaAtiva = Text("pg1");
        break;
      case 2:
        paginaAtiva = Text("pg2");
        break;
      case 3:
        paginaAtiva = Text("Perfil de usuário.");
        break;
    }
  }
}

import 'package:alacobe/janela_principal/pagina_ativa.dart';
import 'package:flutter/material.dart';

class NavegadorInferior extends BottomNavigationBar{
  NavegadorInferior(PaginaAtiva paginaAtiva) : super(
    currentIndex: paginaAtiva.paginaAtivaIndex,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.store), title: Text("Lojas")),
      BottomNavigationBarItem(icon: Icon(Icons.person_pin), title: Text("...")),
      BottomNavigationBarItem(icon: Icon(Icons.chrome_reader_mode), title: Text("...")),
      BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("Perfil")),
    ],
    onTap: paginaAtiva.setarPagina,
    selectedItemColor: Colors.red,
    showUnselectedLabels: true,
    unselectedItemColor: Colors.grey,
  );
}

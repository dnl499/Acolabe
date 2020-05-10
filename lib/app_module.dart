import 'package:alacobe/app.dart';
import 'package:alacobe/janela_pesquisa/janela_pesquisa.dart';
import 'package:alacobe/janela_resultado/janela_resultado.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'janela_principal/pagina_principal.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  Widget get bootstrap => Acolabe();

  @override
  List<Router> get routers => [
    Router("/", child: (_, args) => PaginaPrincipal()),
    Router("/pesquisa", child: (_, args) => PaginaPesquisa()),
    Router("/pesquisarPor/:pesquisa", child: (_, args) => PaginaResultado(pesquisaAll: args.params["pesquisa"],)),
    Router("/pesquisaCategoria/:categoria", child: (_, args) => PaginaResultado(pesquisaCategoria: args.params["categoria"],))
  ];
}

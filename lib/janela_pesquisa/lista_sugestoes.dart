import 'package:alacobe/janela_pesquisa/sugestao.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'lista_sugestoes.g.dart';

class ListaSugestoes = ListaSugestoesBase with _$ListaSugestoes;

abstract class ListaSugestoesBase with Store{
  @observable
  List<Sugestao> sugestoes = <Sugestao>[];

  @action
  addSugestao(String sugestao) async {
    SharedPreferences memoria = await SharedPreferences.getInstance();
    List<String> salvos = memoria.getStringList('sugestoes') ?? <String>[];
    List<Sugestao> novasSugestoes = <Sugestao>[];
    if (!salvos.contains(sugestao)){
      salvos.add(sugestao);
      salvos.forEach((salvo) => novasSugestoes.add(Sugestao(salvo, this)));
      sugestoes = novasSugestoes;
      await memoria.setStringList('sugestoes', salvos);
    }
  }

  @action
  removeSugestao(String sugestao) async {
    SharedPreferences memoria = await SharedPreferences.getInstance();
    List<String> salvos = memoria.getStringList('sugestoes') ?? <String>[];
    List<Sugestao> novasSugestoes = <Sugestao>[];
    salvos.remove(sugestao);
    salvos.forEach((salvo) => novasSugestoes.add(Sugestao(salvo, this)));
    sugestoes = novasSugestoes;
    await memoria.setStringList('sugestoes', salvos);
  }

  @action
  getSugestoesSalvas() async {
    SharedPreferences memoria = await SharedPreferences.getInstance();
    List<String> salvos = memoria.getStringList("sugestoes") ?? <String>[];
    List<Sugestao> novasSugestoes = <Sugestao>[];
    salvos.forEach((sugestao) => novasSugestoes.add(Sugestao(sugestao, this)));
    sugestoes = novasSugestoes;
  }
}

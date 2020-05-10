// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_lojas.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListaLojas on ListaLojasBase, Store {
  final _$listaLojasAtom = Atom(name: 'ListaLojasBase.listaLojas');

  @override
  List<Widget> get listaLojas {
    _$listaLojasAtom.context.enforceReadPolicy(_$listaLojasAtom);
    _$listaLojasAtom.reportObserved();
    return super.listaLojas;
  }

  @override
  set listaLojas(List<Widget> value) {
    _$listaLojasAtom.context.conditionallyRunInAction(() {
      super.listaLojas = value;
      _$listaLojasAtom.reportChanged();
    }, _$listaLojasAtom, name: '${_$listaLojasAtom.name}_set');
  }

  final _$ListaLojasBaseActionController =
      ActionController(name: 'ListaLojasBase');

  @override
  dynamic adicionarItem(List<Widget> lista) {
    final _$actionInfo = _$ListaLojasBaseActionController.startAction();
    try {
      return super.adicionarItem(lista);
    } finally {
      _$ListaLojasBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic limparLista() {
    final _$actionInfo = _$ListaLojasBaseActionController.startAction();
    try {
      return super.limparLista();
    } finally {
      _$ListaLojasBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'listaLojas: ${listaLojas.toString()}';
    return '{$string}';
  }
}

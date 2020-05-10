// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagina_ativa.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PaginaAtiva on PaginaAtivaBase, Store {
  final _$paginaAtivaIndexAtom = Atom(name: 'PaginaAtivaBase.paginaAtivaIndex');

  @override
  int get paginaAtivaIndex {
    _$paginaAtivaIndexAtom.context.enforceReadPolicy(_$paginaAtivaIndexAtom);
    _$paginaAtivaIndexAtom.reportObserved();
    return super.paginaAtivaIndex;
  }

  @override
  set paginaAtivaIndex(int value) {
    _$paginaAtivaIndexAtom.context.conditionallyRunInAction(() {
      super.paginaAtivaIndex = value;
      _$paginaAtivaIndexAtom.reportChanged();
    }, _$paginaAtivaIndexAtom, name: '${_$paginaAtivaIndexAtom.name}_set');
  }

  final _$paginaAtivaAtom = Atom(name: 'PaginaAtivaBase.paginaAtiva');

  @override
  Widget get paginaAtiva {
    _$paginaAtivaAtom.context.enforceReadPolicy(_$paginaAtivaAtom);
    _$paginaAtivaAtom.reportObserved();
    return super.paginaAtiva;
  }

  @override
  set paginaAtiva(Widget value) {
    _$paginaAtivaAtom.context.conditionallyRunInAction(() {
      super.paginaAtiva = value;
      _$paginaAtivaAtom.reportChanged();
    }, _$paginaAtivaAtom, name: '${_$paginaAtivaAtom.name}_set');
  }

  final _$PaginaAtivaBaseActionController =
      ActionController(name: 'PaginaAtivaBase');

  @override
  dynamic setarPagina(int pagina) {
    final _$actionInfo = _$PaginaAtivaBaseActionController.startAction();
    try {
      return super.setarPagina(pagina);
    } finally {
      _$PaginaAtivaBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'paginaAtivaIndex: ${paginaAtivaIndex.toString()},paginaAtiva: ${paginaAtiva.toString()}';
    return '{$string}';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_categorias.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListaCategorias on ListaCategoriasBase, Store {
  final _$categoriasAtom = Atom(name: 'ListaCategoriasBase.categorias');

  @override
  List<Widget> get categorias {
    _$categoriasAtom.context.enforceReadPolicy(_$categoriasAtom);
    _$categoriasAtom.reportObserved();
    return super.categorias;
  }

  @override
  set categorias(List<Widget> value) {
    _$categoriasAtom.context.conditionallyRunInAction(() {
      super.categorias = value;
      _$categoriasAtom.reportChanged();
    }, _$categoriasAtom, name: '${_$categoriasAtom.name}_set');
  }

  final _$ListaCategoriasBaseActionController =
      ActionController(name: 'ListaCategoriasBase');

  @override
  dynamic adicionarItem(List<ItemCategoria> lista) {
    final _$actionInfo = _$ListaCategoriasBaseActionController.startAction();
    try {
      return super.adicionarItem(lista);
    } finally {
      _$ListaCategoriasBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'categorias: ${categorias.toString()}';
    return '{$string}';
  }
}

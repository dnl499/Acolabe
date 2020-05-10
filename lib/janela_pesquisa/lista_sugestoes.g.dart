// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_sugestoes.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListaSugestoes on ListaSugestoesBase, Store {
  final _$sugestoesAtom = Atom(name: 'ListaSugestoesBase.sugestoes');

  @override
  List<Sugestao> get sugestoes {
    _$sugestoesAtom.context.enforceReadPolicy(_$sugestoesAtom);
    _$sugestoesAtom.reportObserved();
    return super.sugestoes;
  }

  @override
  set sugestoes(List<Sugestao> value) {
    _$sugestoesAtom.context.conditionallyRunInAction(() {
      super.sugestoes = value;
      _$sugestoesAtom.reportChanged();
    }, _$sugestoesAtom, name: '${_$sugestoesAtom.name}_set');
  }

  final _$addSugestaoAsyncAction = AsyncAction('addSugestao');

  @override
  Future addSugestao(String sugestao) {
    return _$addSugestaoAsyncAction.run(() => super.addSugestao(sugestao));
  }

  final _$removeSugestaoAsyncAction = AsyncAction('removeSugestao');

  @override
  Future removeSugestao(String sugestao) {
    return _$removeSugestaoAsyncAction
        .run(() => super.removeSugestao(sugestao));
  }

  final _$getSugestoesSalvasAsyncAction = AsyncAction('getSugestoesSalvas');

  @override
  Future getSugestoesSalvas() {
    return _$getSugestoesSalvasAsyncAction
        .run(() => super.getSugestoesSalvas());
  }

  @override
  String toString() {
    final string = 'sugestoes: ${sugestoes.toString()}';
    return '{$string}';
  }
}

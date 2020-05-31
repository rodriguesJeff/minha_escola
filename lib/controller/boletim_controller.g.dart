// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boletim_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BoletimController on _BoletimControllerBase, Store {
  Computed<BoletimApi> _$boletimApiComputed;

  @override
  BoletimApi get boletimApi =>
      (_$boletimApiComputed ??= Computed<BoletimApi>(() => super.boletimApi))
          .value;

  final _$_boletimApiAtom = Atom(name: '_BoletimControllerBase._boletimApi');

  @override
  BoletimApi get _boletimApi {
    _$_boletimApiAtom.context.enforceReadPolicy(_$_boletimApiAtom);
    _$_boletimApiAtom.reportObserved();
    return super._boletimApi;
  }

  @override
  set _boletimApi(BoletimApi value) {
    _$_boletimApiAtom.context.conditionallyRunInAction(() {
      super._boletimApi = value;
      _$_boletimApiAtom.reportChanged();
    }, _$_boletimApiAtom, name: '${_$_boletimApiAtom.name}_set');
  }

  final _$loadBoletimAsyncAction = AsyncAction('loadBoletim');

  @override
  Future<BoletimApi> loadBoletim() {
    return _$loadBoletimAsyncAction.run(() => super.loadBoletim());
  }

  final _$_BoletimControllerBaseActionController =
      ActionController(name: '_BoletimControllerBase');

  @override
  dynamic fetchBoletim() {
    final _$actionInfo = _$_BoletimControllerBaseActionController.startAction();
    try {
      return super.fetchBoletim();
    } finally {
      _$_BoletimControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'boletimApi: ${boletimApi.toString()}';
    return '{$string}';
  }
}

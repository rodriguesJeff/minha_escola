// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boletim_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BoletimController on _BoletimControllerBase, Store {
  Computed<BoletimApi> _$boletimApiComputed;

  @override
  BoletimApi get boletimApi =>
      (_$boletimApiComputed ??= Computed<BoletimApi>(() => super.boletimApi,
              name: '_BoletimControllerBase.boletimApi'))
          .value;

  final _$_boletimApiAtom = Atom(name: '_BoletimControllerBase._boletimApi');

  @override
  BoletimApi get _boletimApi {
    _$_boletimApiAtom.reportRead();
    return super._boletimApi;
  }

  @override
  set _boletimApi(BoletimApi value) {
    _$_boletimApiAtom.reportWrite(value, super._boletimApi, () {
      super._boletimApi = value;
    });
  }

  final _$loadBoletimAsyncAction =
      AsyncAction('_BoletimControllerBase.loadBoletim');

  @override
  Future<BoletimApi> loadBoletim() {
    return _$loadBoletimAsyncAction.run(() => super.loadBoletim());
  }

  final _$_BoletimControllerBaseActionController =
      ActionController(name: '_BoletimControllerBase');

  @override
  dynamic fetchBoletim() {
    final _$actionInfo = _$_BoletimControllerBaseActionController.startAction(
        name: '_BoletimControllerBase.fetchBoletim');
    try {
      return super.fetchBoletim();
    } finally {
      _$_BoletimControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
boletimApi: ${boletimApi}
    ''';
  }
}

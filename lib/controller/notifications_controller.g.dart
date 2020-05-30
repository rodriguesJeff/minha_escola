// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NotificationsController on _NotificationsControllerBase, Store {
  Computed<NotificationsApi> _$notificationsApiComputed;

  @override
  NotificationsApi get notificationsApi => (_$notificationsApiComputed ??=
          Computed<NotificationsApi>(() => super.notificationsApi))
      .value;

  final _$_notificationsApiAtom =
      Atom(name: '_NotificationsControllerBase._notificationsApi');

  @override
  NotificationsApi get _notificationsApi {
    _$_notificationsApiAtom.context.enforceReadPolicy(_$_notificationsApiAtom);
    _$_notificationsApiAtom.reportObserved();
    return super._notificationsApi;
  }

  @override
  set _notificationsApi(NotificationsApi value) {
    _$_notificationsApiAtom.context.conditionallyRunInAction(() {
      super._notificationsApi = value;
      _$_notificationsApiAtom.reportChanged();
    }, _$_notificationsApiAtom, name: '${_$_notificationsApiAtom.name}_set');
  }

  final _$_NotificationsControllerBaseActionController =
      ActionController(name: '_NotificationsControllerBase');

  @override
  dynamic fetchNotificationsList() {
    final _$actionInfo =
        _$_NotificationsControllerBaseActionController.startAction();
    try {
      return super.fetchNotificationsList();
    } finally {
      _$_NotificationsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'notificationsApi: ${notificationsApi.toString()}';
    return '{$string}';
  }
}

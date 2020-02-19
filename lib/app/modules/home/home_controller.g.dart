// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$resultAtom = Atom(name: '_HomeBase.result');

  @override
  double get result {
    _$resultAtom.context.enforceReadPolicy(_$resultAtom);
    _$resultAtom.reportObserved();
    return super.result;
  }

  @override
  set result(double value) {
    _$resultAtom.context.conditionallyRunInAction(() {
      super.result = value;
      _$resultAtom.reportChanged();
    }, _$resultAtom, name: '${_$resultAtom.name}_set');
  }

  final _$showResultAtom = Atom(name: '_HomeBase.showResult');

  @override
  String get showResult {
    _$showResultAtom.context.enforceReadPolicy(_$showResultAtom);
    _$showResultAtom.reportObserved();
    return super.showResult;
  }

  @override
  set showResult(String value) {
    _$showResultAtom.context.conditionallyRunInAction(() {
      super.showResult = value;
      _$showResultAtom.reportChanged();
    }, _$showResultAtom, name: '${_$showResultAtom.name}_set');
  }

  final _$opAtom = Atom(name: '_HomeBase.op');

  @override
  String get op {
    _$opAtom.context.enforceReadPolicy(_$opAtom);
    _$opAtom.reportObserved();
    return super.op;
  }

  @override
  set op(String value) {
    _$opAtom.context.conditionallyRunInAction(() {
      super.op = value;
      _$opAtom.reportChanged();
    }, _$opAtom, name: '${_$opAtom.name}_set');
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  void setResult(double newNumber) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.setResult(newNumber);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNumber(double number) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.setNumber(number);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setOperator(String newOp) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.setOperator(newOp);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void calculate() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.calculate();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void convertDoubleToString(double number) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.convertDoubleToString(number);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'result: ${result.toString()},showResult: ${showResult.toString()},op: ${op.toString()}';
    return '{$string}';
  }
}

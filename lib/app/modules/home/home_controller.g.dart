// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$number1Atom = Atom(name: '_HomeBase.number1');

  @override
  double get number1 {
    _$number1Atom.context.enforceReadPolicy(_$number1Atom);
    _$number1Atom.reportObserved();
    return super.number1;
  }

  @override
  set number1(double value) {
    _$number1Atom.context.conditionallyRunInAction(() {
      super.number1 = value;
      _$number1Atom.reportChanged();
    }, _$number1Atom, name: '${_$number1Atom.name}_set');
  }

  final _$number2Atom = Atom(name: '_HomeBase.number2');

  @override
  double get number2 {
    _$number2Atom.context.enforceReadPolicy(_$number2Atom);
    _$number2Atom.reportObserved();
    return super.number2;
  }

  @override
  set number2(double value) {
    _$number2Atom.context.conditionallyRunInAction(() {
      super.number2 = value;
      _$number2Atom.reportChanged();
    }, _$number2Atom, name: '${_$number2Atom.name}_set');
  }

  final _$displayResultAtom = Atom(name: '_HomeBase.displayResult');

  @override
  String get displayResult {
    _$displayResultAtom.context.enforceReadPolicy(_$displayResultAtom);
    _$displayResultAtom.reportObserved();
    return super.displayResult;
  }

  @override
  set displayResult(String value) {
    _$displayResultAtom.context.conditionallyRunInAction(() {
      super.displayResult = value;
      _$displayResultAtom.reportChanged();
    }, _$displayResultAtom, name: '${_$displayResultAtom.name}_set');
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

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  dynamic clearAll() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.clearAll();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNumber(double newNumber) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.setNumber(newNumber);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setOp(String newOp) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.setOp(newOp);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic calculate() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.calculate();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'number1: ${number1.toString()},number2: ${number2.toString()},displayResult: ${displayResult.toString()},op: ${op.toString()},result: ${result.toString()}';
    return '{$string}';
  }
}

import 'package:zumbeedo/interfaces/historic/historic_model_interface.dart';

class HistoricModelDefault extends IHistoricModel {
  final int _id;
  final int _result;
  final String _name;
  final DateTime _date;
  final String _description;

  HistoricModelDefault(
    this._id,
    this._result,
    this._name,
    this._date,
    this._description,
  );

  @override
  DateTime get date => _date;

  @override
  String get description => _description;

  @override
  int get id => _id;

  @override
  String get name => _name;

  @override
  int get result => _result;
}

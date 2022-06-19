/// Interface for the historic data.
abstract class IHistoricModel {
  int get id;
  int get result;
  String get name;
  DateTime get date;
  String get description;
}

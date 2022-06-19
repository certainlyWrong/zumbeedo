import 'package:zumbeedo/interfaces/historic/historic_model_interface.dart';

abstract class IHistoricRepository {
  Future<List<IHistoricModel>> getHistorics();
  Future<IHistoricModel> updateHistoric(int id);
  Future<IHistoricModel> deleteHistoric(int id);
  Future<IHistoricModel> getHistoricById(int id);
  Future<IHistoricModel> addHistoric(IHistoricModel historic);
}

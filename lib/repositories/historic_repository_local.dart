import 'package:flutter/material.dart';
import 'package:zumbeedo/interfaces/historic/historic_model_interface.dart';
import 'package:zumbeedo/interfaces/historic/historic_repository_interface.dart';

class HistoricRepositoryLocal extends ChangeNotifier
    implements IHistoricRepository {
  @override
  Future<IHistoricModel> addHistoric(IHistoricModel historic) {
    // TODO: implement createHistoric
    throw UnimplementedError();
  }

  @override
  Future<IHistoricModel> deleteHistoric(int id) {
    // TODO: implement deleteHistoric
    throw UnimplementedError();
  }

  @override
  Future<IHistoricModel> getHistoricById(int id) {
    // TODO: implement getHistoricById
    throw UnimplementedError();
  }

  @override
  Future<List<IHistoricModel>> getHistorics() {
    // TODO: implement getHistorics
    throw UnimplementedError();
  }

  @override
  Future<IHistoricModel> updateHistoric(int id) {
    // TODO: implement updateHistoric
    throw UnimplementedError();
  }
}

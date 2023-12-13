import 'package:dio/dio.dart';
import 'package:flutter_application_1/entity.dart';

const rickAndMortyURL = 'https://rickandmortyapi.com/api/character';

class Api {
  final dio = Dio();

  Future<EntityRm> getAll() async {
    final response = await dio.get('https://rickandmortyapi.com/api/character');
    final jsonResponse = response.data;
    final entityRM = EntityRm.fromJson(jsonResponse);
    return entityRM;
  }
}

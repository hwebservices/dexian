import 'dart:convert';

import 'package:dexian/config/api/app_endpoints.dart';
import 'package:dexian/features/characters/simpsons/simpsons_model.dart';
import 'package:dexian/services/dio_service.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'simpsons_repository.g.dart';

class SimpsonsRepository {
  SimpsonsRepository({required this.client});

  final Dio client;

  Future<List<SimpsonsModel>> fetchSimponsData() async {
    final response = await client.get(AppEndpoints.simpsons);
    final data = jsonDecode(response.data);
    print(data['RelatedTopics']);
    return List<SimpsonsModel>.from(
        data['RelatedTopics'].map((x) => SimpsonsModel.fromJson(x)));
  }
}

@riverpod
SimpsonsRepository simpsonsRepository(SimpsonsRepositoryRef ref) =>
    SimpsonsRepository(client: ref.watch(dioProvider));

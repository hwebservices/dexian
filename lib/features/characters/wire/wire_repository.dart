import 'dart:convert';
import 'package:dexian/config/api/app_endpoints.dart';
import 'package:dexian/features/characters/wire/wire_model.dart';
import 'package:dexian/services/dio_service.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'wire_repository.g.dart';

class WireRepository {
  WireRepository({required this.client});

  final Dio client;

  Future<List<WireModel>> fetchWireData() async {
    final response = await client.get(AppEndpoints.wire);
    final data = jsonDecode(response.data);
    print(data['RelatedTopics']);
    return List<WireModel>.from(
        data['RelatedTopics'].map((x) => WireModel.fromJson(x)));
  }
}

@riverpod
WireRepository wireRepository(WireRepositoryRef ref) =>
    WireRepository(client: ref.watch(dioProvider));

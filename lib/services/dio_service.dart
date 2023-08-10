import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_service.g.dart';

@riverpod
Dio dio(DioRef ref) {
  return Dio();
}

import 'package:dexian/features/characters/wire/wire_model.dart';
import 'package:dexian/features/characters/wire/wire_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'wire_provider.g.dart';

@riverpod
class Wire extends _$Wire {
  @override
  Future<List<WireModel>> build() {
    return fetchWireData();
  }

  Future<List<WireModel>> fetchWireData() async {
    final _wireRepository = ref.watch(wireRepositoryProvider);
    return await _wireRepository.fetchWireData();
  }
}

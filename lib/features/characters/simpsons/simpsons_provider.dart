import 'package:dexian/features/characters/simpsons/simpsons_model.dart';
import 'package:dexian/features/characters/simpsons/simpsons_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'simpsons_provider.g.dart';

@riverpod
class Simpsons extends _$Simpsons {
  @override
  Future<List<SimpsonsModel>> build() {
    return fetchSimponsData();
  }

  Future<List<SimpsonsModel>> fetchSimponsData() async {
    final _simpsonsRepository = ref.watch(simpsonsRepositoryProvider);
    return await _simpsonsRepository.fetchSimponsData();
  }
}

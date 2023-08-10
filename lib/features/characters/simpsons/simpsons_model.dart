import 'package:freezed_annotation/freezed_annotation.dart';

part 'simpsons_model.freezed.dart';
part 'simpsons_model.g.dart';

@freezed
class SimpsonsModel with _$SimpsonsModel {
  factory SimpsonsModel({
    String? firstUrl,
    Icon? icon,
    String? result,
    String? text,
  }) = _SimpsonsModel;

  factory SimpsonsModel.fromJson(Map<String, dynamic> json) =>
      _$SimpsonsModelFromJson(json);
}

@freezed
class Icon with _$Icon {
  factory Icon({
    String? height,
    String? url,
    String? width,
  }) = _Icon;

  factory Icon.fromJson(Map<String, dynamic> json) => _$IconFromJson(json);
}

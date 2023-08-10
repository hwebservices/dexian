import 'package:freezed_annotation/freezed_annotation.dart';

part 'wire_model.freezed.dart';
part 'wire_model.g.dart';

@freezed
class WireModel with _$WireModel {
  factory WireModel({
    String? firstUrl,
    Icon? icon,
    String? result,
    String? text,
  }) = _WireModel;

  factory WireModel.fromJson(Map<String, dynamic> json) =>
      _$WireModelFromJson(json);
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

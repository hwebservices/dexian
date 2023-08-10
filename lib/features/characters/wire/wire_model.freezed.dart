// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wire_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WireModel _$WireModelFromJson(Map<String, dynamic> json) {
  return _WireModel.fromJson(json);
}

/// @nodoc
mixin _$WireModel {
  String? get firstUrl => throw _privateConstructorUsedError;
  Icon? get icon => throw _privateConstructorUsedError;
  String? get result => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WireModelCopyWith<WireModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WireModelCopyWith<$Res> {
  factory $WireModelCopyWith(WireModel value, $Res Function(WireModel) then) =
      _$WireModelCopyWithImpl<$Res, WireModel>;
  @useResult
  $Res call({String? firstUrl, Icon? icon, String? result, String? text});

  $IconCopyWith<$Res>? get icon;
}

/// @nodoc
class _$WireModelCopyWithImpl<$Res, $Val extends WireModel>
    implements $WireModelCopyWith<$Res> {
  _$WireModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstUrl = freezed,
    Object? icon = freezed,
    Object? result = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      firstUrl: freezed == firstUrl
          ? _value.firstUrl
          : firstUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Icon?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IconCopyWith<$Res>? get icon {
    if (_value.icon == null) {
      return null;
    }

    return $IconCopyWith<$Res>(_value.icon!, (value) {
      return _then(_value.copyWith(icon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WireModelCopyWith<$Res> implements $WireModelCopyWith<$Res> {
  factory _$$_WireModelCopyWith(
          _$_WireModel value, $Res Function(_$_WireModel) then) =
      __$$_WireModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? firstUrl, Icon? icon, String? result, String? text});

  @override
  $IconCopyWith<$Res>? get icon;
}

/// @nodoc
class __$$_WireModelCopyWithImpl<$Res>
    extends _$WireModelCopyWithImpl<$Res, _$_WireModel>
    implements _$$_WireModelCopyWith<$Res> {
  __$$_WireModelCopyWithImpl(
      _$_WireModel _value, $Res Function(_$_WireModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstUrl = freezed,
    Object? icon = freezed,
    Object? result = freezed,
    Object? text = freezed,
  }) {
    return _then(_$_WireModel(
      firstUrl: freezed == firstUrl
          ? _value.firstUrl
          : firstUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Icon?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WireModel implements _WireModel {
  _$_WireModel({this.firstUrl, this.icon, this.result, this.text});

  factory _$_WireModel.fromJson(Map<String, dynamic> json) =>
      _$$_WireModelFromJson(json);

  @override
  final String? firstUrl;
  @override
  final Icon? icon;
  @override
  final String? result;
  @override
  final String? text;

  @override
  String toString() {
    return 'WireModel(firstUrl: $firstUrl, icon: $icon, result: $result, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WireModel &&
            (identical(other.firstUrl, firstUrl) ||
                other.firstUrl == firstUrl) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstUrl, icon, result, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WireModelCopyWith<_$_WireModel> get copyWith =>
      __$$_WireModelCopyWithImpl<_$_WireModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WireModelToJson(
      this,
    );
  }
}

abstract class _WireModel implements WireModel {
  factory _WireModel(
      {final String? firstUrl,
      final Icon? icon,
      final String? result,
      final String? text}) = _$_WireModel;

  factory _WireModel.fromJson(Map<String, dynamic> json) =
      _$_WireModel.fromJson;

  @override
  String? get firstUrl;
  @override
  Icon? get icon;
  @override
  String? get result;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$_WireModelCopyWith<_$_WireModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Icon _$IconFromJson(Map<String, dynamic> json) {
  return _Icon.fromJson(json);
}

/// @nodoc
mixin _$Icon {
  String? get height => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IconCopyWith<Icon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IconCopyWith<$Res> {
  factory $IconCopyWith(Icon value, $Res Function(Icon) then) =
      _$IconCopyWithImpl<$Res, Icon>;
  @useResult
  $Res call({String? height, String? url, String? width});
}

/// @nodoc
class _$IconCopyWithImpl<$Res, $Val extends Icon>
    implements $IconCopyWith<$Res> {
  _$IconCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? url = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IconCopyWith<$Res> implements $IconCopyWith<$Res> {
  factory _$$_IconCopyWith(_$_Icon value, $Res Function(_$_Icon) then) =
      __$$_IconCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? height, String? url, String? width});
}

/// @nodoc
class __$$_IconCopyWithImpl<$Res> extends _$IconCopyWithImpl<$Res, _$_Icon>
    implements _$$_IconCopyWith<$Res> {
  __$$_IconCopyWithImpl(_$_Icon _value, $Res Function(_$_Icon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? url = freezed,
    Object? width = freezed,
  }) {
    return _then(_$_Icon(
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Icon implements _Icon {
  _$_Icon({this.height, this.url, this.width});

  factory _$_Icon.fromJson(Map<String, dynamic> json) => _$$_IconFromJson(json);

  @override
  final String? height;
  @override
  final String? url;
  @override
  final String? width;

  @override
  String toString() {
    return 'Icon(height: $height, url: $url, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Icon &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, height, url, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IconCopyWith<_$_Icon> get copyWith =>
      __$$_IconCopyWithImpl<_$_Icon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IconToJson(
      this,
    );
  }
}

abstract class _Icon implements Icon {
  factory _Icon(
      {final String? height, final String? url, final String? width}) = _$_Icon;

  factory _Icon.fromJson(Map<String, dynamic> json) = _$_Icon.fromJson;

  @override
  String? get height;
  @override
  String? get url;
  @override
  String? get width;
  @override
  @JsonKey(ignore: true)
  _$$_IconCopyWith<_$_Icon> get copyWith => throw _privateConstructorUsedError;
}

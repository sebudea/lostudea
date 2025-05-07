// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'found_object_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FoundObjectModel _$FoundObjectModelFromJson(Map<String, dynamic> json) {
  return _FoundObjectModel.fromJson(json);
}

/// @nodoc
mixin _$FoundObjectModel {
  String get idObject => throw _privateConstructorUsedError;
  String get idFinder => throw _privateConstructorUsedError;
  String get gmailFinder => throw _privateConstructorUsedError;
  String get what =>
      throw _privateConstructorUsedError; // podemos cambiar esto para que sea de tipo Enum
  String get where =>
      throw _privateConstructorUsedError; // podemos cambiar esto para que sea de tipo Enum
  DateTime get when => throw _privateConstructorUsedError;

  /// Serializes this FoundObjectModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FoundObjectModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoundObjectModelCopyWith<FoundObjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoundObjectModelCopyWith<$Res> {
  factory $FoundObjectModelCopyWith(
          FoundObjectModel value, $Res Function(FoundObjectModel) then) =
      _$FoundObjectModelCopyWithImpl<$Res, FoundObjectModel>;
  @useResult
  $Res call(
      {String idObject,
      String idFinder,
      String gmailFinder,
      String what,
      String where,
      DateTime when});
}

/// @nodoc
class _$FoundObjectModelCopyWithImpl<$Res, $Val extends FoundObjectModel>
    implements $FoundObjectModelCopyWith<$Res> {
  _$FoundObjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoundObjectModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idObject = null,
    Object? idFinder = null,
    Object? gmailFinder = null,
    Object? what = null,
    Object? where = null,
    Object? when = null,
  }) {
    return _then(_value.copyWith(
      idObject: null == idObject
          ? _value.idObject
          : idObject // ignore: cast_nullable_to_non_nullable
              as String,
      idFinder: null == idFinder
          ? _value.idFinder
          : idFinder // ignore: cast_nullable_to_non_nullable
              as String,
      gmailFinder: null == gmailFinder
          ? _value.gmailFinder
          : gmailFinder // ignore: cast_nullable_to_non_nullable
              as String,
      what: null == what
          ? _value.what
          : what // ignore: cast_nullable_to_non_nullable
              as String,
      where: null == where
          ? _value.where
          : where // ignore: cast_nullable_to_non_nullable
              as String,
      when: null == when
          ? _value.when
          : when // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoundObjectModelImplCopyWith<$Res>
    implements $FoundObjectModelCopyWith<$Res> {
  factory _$$FoundObjectModelImplCopyWith(_$FoundObjectModelImpl value,
          $Res Function(_$FoundObjectModelImpl) then) =
      __$$FoundObjectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String idObject,
      String idFinder,
      String gmailFinder,
      String what,
      String where,
      DateTime when});
}

/// @nodoc
class __$$FoundObjectModelImplCopyWithImpl<$Res>
    extends _$FoundObjectModelCopyWithImpl<$Res, _$FoundObjectModelImpl>
    implements _$$FoundObjectModelImplCopyWith<$Res> {
  __$$FoundObjectModelImplCopyWithImpl(_$FoundObjectModelImpl _value,
      $Res Function(_$FoundObjectModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoundObjectModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idObject = null,
    Object? idFinder = null,
    Object? gmailFinder = null,
    Object? what = null,
    Object? where = null,
    Object? when = null,
  }) {
    return _then(_$FoundObjectModelImpl(
      idObject: null == idObject
          ? _value.idObject
          : idObject // ignore: cast_nullable_to_non_nullable
              as String,
      idFinder: null == idFinder
          ? _value.idFinder
          : idFinder // ignore: cast_nullable_to_non_nullable
              as String,
      gmailFinder: null == gmailFinder
          ? _value.gmailFinder
          : gmailFinder // ignore: cast_nullable_to_non_nullable
              as String,
      what: null == what
          ? _value.what
          : what // ignore: cast_nullable_to_non_nullable
              as String,
      where: null == where
          ? _value.where
          : where // ignore: cast_nullable_to_non_nullable
              as String,
      when: null == when
          ? _value.when
          : when // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoundObjectModelImpl implements _FoundObjectModel {
  const _$FoundObjectModelImpl(
      {required this.idObject,
      required this.idFinder,
      required this.gmailFinder,
      required this.what,
      required this.where,
      required this.when});

  factory _$FoundObjectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoundObjectModelImplFromJson(json);

  @override
  final String idObject;
  @override
  final String idFinder;
  @override
  final String gmailFinder;
  @override
  final String what;
// podemos cambiar esto para que sea de tipo Enum
  @override
  final String where;
// podemos cambiar esto para que sea de tipo Enum
  @override
  final DateTime when;

  @override
  String toString() {
    return 'FoundObjectModel(idObject: $idObject, idFinder: $idFinder, gmailFinder: $gmailFinder, what: $what, where: $where, when: $when)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoundObjectModelImpl &&
            (identical(other.idObject, idObject) ||
                other.idObject == idObject) &&
            (identical(other.idFinder, idFinder) ||
                other.idFinder == idFinder) &&
            (identical(other.gmailFinder, gmailFinder) ||
                other.gmailFinder == gmailFinder) &&
            (identical(other.what, what) || other.what == what) &&
            (identical(other.where, where) || other.where == where) &&
            (identical(other.when, when) || other.when == when));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, idObject, idFinder, gmailFinder, what, where, when);

  /// Create a copy of FoundObjectModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoundObjectModelImplCopyWith<_$FoundObjectModelImpl> get copyWith =>
      __$$FoundObjectModelImplCopyWithImpl<_$FoundObjectModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FoundObjectModelImplToJson(
      this,
    );
  }
}

abstract class _FoundObjectModel implements FoundObjectModel {
  const factory _FoundObjectModel(
      {required final String idObject,
      required final String idFinder,
      required final String gmailFinder,
      required final String what,
      required final String where,
      required final DateTime when}) = _$FoundObjectModelImpl;

  factory _FoundObjectModel.fromJson(Map<String, dynamic> json) =
      _$FoundObjectModelImpl.fromJson;

  @override
  String get idObject;
  @override
  String get idFinder;
  @override
  String get gmailFinder;
  @override
  String get what; // podemos cambiar esto para que sea de tipo Enum
  @override
  String get where; // podemos cambiar esto para que sea de tipo Enum
  @override
  DateTime get when;

  /// Create a copy of FoundObjectModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoundObjectModelImplCopyWith<_$FoundObjectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

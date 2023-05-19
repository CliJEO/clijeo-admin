// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clijeo_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClijeoUser _$ClijeoUserFromJson(Map<String, dynamic> json) {
  return _ClijeoUser.fromJson(json);
}

/// @nodoc
mixin _$ClijeoUser {
  String get name => throw _privateConstructorUsedError;
  List<UserQuery> get activeQueries => throw _privateConstructorUsedError;
  List<UserQuery> get archivedQueries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClijeoUserCopyWith<ClijeoUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClijeoUserCopyWith<$Res> {
  factory $ClijeoUserCopyWith(
          ClijeoUser value, $Res Function(ClijeoUser) then) =
      _$ClijeoUserCopyWithImpl<$Res, ClijeoUser>;
  @useResult
  $Res call(
      {String name,
      List<UserQuery> activeQueries,
      List<UserQuery> archivedQueries});
}

/// @nodoc
class _$ClijeoUserCopyWithImpl<$Res, $Val extends ClijeoUser>
    implements $ClijeoUserCopyWith<$Res> {
  _$ClijeoUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? activeQueries = null,
    Object? archivedQueries = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      activeQueries: null == activeQueries
          ? _value.activeQueries
          : activeQueries // ignore: cast_nullable_to_non_nullable
              as List<UserQuery>,
      archivedQueries: null == archivedQueries
          ? _value.archivedQueries
          : archivedQueries // ignore: cast_nullable_to_non_nullable
              as List<UserQuery>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClijeoUserCopyWith<$Res>
    implements $ClijeoUserCopyWith<$Res> {
  factory _$$_ClijeoUserCopyWith(
          _$_ClijeoUser value, $Res Function(_$_ClijeoUser) then) =
      __$$_ClijeoUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      List<UserQuery> activeQueries,
      List<UserQuery> archivedQueries});
}

/// @nodoc
class __$$_ClijeoUserCopyWithImpl<$Res>
    extends _$ClijeoUserCopyWithImpl<$Res, _$_ClijeoUser>
    implements _$$_ClijeoUserCopyWith<$Res> {
  __$$_ClijeoUserCopyWithImpl(
      _$_ClijeoUser _value, $Res Function(_$_ClijeoUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? activeQueries = null,
    Object? archivedQueries = null,
  }) {
    return _then(_$_ClijeoUser(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      activeQueries: null == activeQueries
          ? _value._activeQueries
          : activeQueries // ignore: cast_nullable_to_non_nullable
              as List<UserQuery>,
      archivedQueries: null == archivedQueries
          ? _value._archivedQueries
          : archivedQueries // ignore: cast_nullable_to_non_nullable
              as List<UserQuery>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClijeoUser with DiagnosticableTreeMixin implements _ClijeoUser {
  const _$_ClijeoUser(
      {required this.name,
      required final List<UserQuery> activeQueries,
      required final List<UserQuery> archivedQueries})
      : _activeQueries = activeQueries,
        _archivedQueries = archivedQueries;

  factory _$_ClijeoUser.fromJson(Map<String, dynamic> json) =>
      _$$_ClijeoUserFromJson(json);

  @override
  final String name;
  final List<UserQuery> _activeQueries;
  @override
  List<UserQuery> get activeQueries {
    if (_activeQueries is EqualUnmodifiableListView) return _activeQueries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeQueries);
  }

  final List<UserQuery> _archivedQueries;
  @override
  List<UserQuery> get archivedQueries {
    if (_archivedQueries is EqualUnmodifiableListView) return _archivedQueries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_archivedQueries);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClijeoUser(name: $name, activeQueries: $activeQueries, archivedQueries: $archivedQueries)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClijeoUser'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('activeQueries', activeQueries))
      ..add(DiagnosticsProperty('archivedQueries', archivedQueries));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClijeoUser &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._activeQueries, _activeQueries) &&
            const DeepCollectionEquality()
                .equals(other._archivedQueries, _archivedQueries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_activeQueries),
      const DeepCollectionEquality().hash(_archivedQueries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClijeoUserCopyWith<_$_ClijeoUser> get copyWith =>
      __$$_ClijeoUserCopyWithImpl<_$_ClijeoUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClijeoUserToJson(
      this,
    );
  }
}

abstract class _ClijeoUser implements ClijeoUser {
  const factory _ClijeoUser(
      {required final String name,
      required final List<UserQuery> activeQueries,
      required final List<UserQuery> archivedQueries}) = _$_ClijeoUser;

  factory _ClijeoUser.fromJson(Map<String, dynamic> json) =
      _$_ClijeoUser.fromJson;

  @override
  String get name;
  @override
  List<UserQuery> get activeQueries;
  @override
  List<UserQuery> get archivedQueries;
  @override
  @JsonKey(ignore: true)
  _$$_ClijeoUserCopyWith<_$_ClijeoUser> get copyWith =>
      throw _privateConstructorUsedError;
}

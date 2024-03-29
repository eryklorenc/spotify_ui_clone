// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album_view_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlbumViewState {
  ItemModelAlbumView? get model => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumViewStateCopyWith<AlbumViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumViewStateCopyWith<$Res> {
  factory $AlbumViewStateCopyWith(
          AlbumViewState value, $Res Function(AlbumViewState) then) =
      _$AlbumViewStateCopyWithImpl<$Res, AlbumViewState>;
  @useResult
  $Res call({ItemModelAlbumView? model, Status status, String? errorMessage});

  $ItemModelAlbumViewCopyWith<$Res>? get model;
}

/// @nodoc
class _$AlbumViewStateCopyWithImpl<$Res, $Val extends AlbumViewState>
    implements $AlbumViewStateCopyWith<$Res> {
  _$AlbumViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ItemModelAlbumView?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemModelAlbumViewCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $ItemModelAlbumViewCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AlbumViewStateImplCopyWith<$Res>
    implements $AlbumViewStateCopyWith<$Res> {
  factory _$$AlbumViewStateImplCopyWith(_$AlbumViewStateImpl value,
          $Res Function(_$AlbumViewStateImpl) then) =
      __$$AlbumViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ItemModelAlbumView? model, Status status, String? errorMessage});

  @override
  $ItemModelAlbumViewCopyWith<$Res>? get model;
}

/// @nodoc
class __$$AlbumViewStateImplCopyWithImpl<$Res>
    extends _$AlbumViewStateCopyWithImpl<$Res, _$AlbumViewStateImpl>
    implements _$$AlbumViewStateImplCopyWith<$Res> {
  __$$AlbumViewStateImplCopyWithImpl(
      _$AlbumViewStateImpl _value, $Res Function(_$AlbumViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AlbumViewStateImpl(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ItemModelAlbumView?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AlbumViewStateImpl implements _AlbumViewState {
  const _$AlbumViewStateImpl(
      {this.model, this.status = Status.initial, this.errorMessage});

  @override
  final ItemModelAlbumView? model;
  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AlbumViewState(model: $model, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumViewStateImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model, status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumViewStateImplCopyWith<_$AlbumViewStateImpl> get copyWith =>
      __$$AlbumViewStateImplCopyWithImpl<_$AlbumViewStateImpl>(
          this, _$identity);
}

abstract class _AlbumViewState implements AlbumViewState {
  const factory _AlbumViewState(
      {final ItemModelAlbumView? model,
      final Status status,
      final String? errorMessage}) = _$AlbumViewStateImpl;

  @override
  ItemModelAlbumView? get model;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AlbumViewStateImplCopyWith<_$AlbumViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

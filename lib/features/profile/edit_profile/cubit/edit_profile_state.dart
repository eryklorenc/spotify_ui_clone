part of 'edit_profile_cubit.dart';


@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    ItemModelEditProfile? model,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _EditProfileState;
}


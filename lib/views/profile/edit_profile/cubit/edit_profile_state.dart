part of 'edit_profile_cubit.dart';

class EditProfileState {
  const EditProfileState({
    this.model,
    this.status = Status.initial,
    this.errorMessage,
  });
  final ItemModelEditProfile? model;
  final Status status;
  final String? errorMessage;
}


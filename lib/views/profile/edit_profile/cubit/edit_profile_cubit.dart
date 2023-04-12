import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_ui_clone/app/core/enums.dart';
import 'package:spotify_ui_clone/models/item_model_edit_profile.dart';
import 'package:spotify_ui_clone/repositories/items_repository_edit_profile.dart';

part 'edit_profile_state.dart';

part 'edit_profile_cubit.freezed.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit(
    this._itemsRepositoryEditProfile,
  ) : super(
          const EditProfileState(),
        );

  final ItemsRepositoryEditProfile _itemsRepositoryEditProfile;

  Future<void> getItemModelEditProfile() async {
    emit(const EditProfileState(
      status: Status.loading,
    ));
    try {
      final itemModelEditProfile =
          await _itemsRepositoryEditProfile.getItemModelEditProfile();
      emit(
        EditProfileState(
          model: itemModelEditProfile,
          status: Status.success,
        ),
      );
    } catch (error) {
      emit(
        EditProfileState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}

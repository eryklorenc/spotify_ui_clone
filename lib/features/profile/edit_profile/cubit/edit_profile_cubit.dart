import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:spotify_ui_clone/app/core/config/enums.dart';
import 'package:spotify_ui_clone/domain/models/edit_profile/item_model_edit_profile.dart';
import 'package:spotify_ui_clone/domain/repositories/items/items_repository.dart';

part 'edit_profile_state.dart';

part 'edit_profile_cubit.freezed.dart';

@injectable
class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit(
    this._itemsRepositoryEditProfile,
  ) : super(
          const EditProfileState(),
        );

  final ItemsRepository _itemsRepositoryEditProfile;

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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_ui_clone/app/core/config/enums.dart';
import 'package:spotify_ui_clone/app/core/theme/app_colors.dart';
import 'package:spotify_ui_clone/app/core/theme/app_text_theme_extension.dart';
import 'package:spotify_ui_clone/app/core/utils/injection_container.dart';
import 'package:spotify_ui_clone/app/cubit/auth_cubit.dart';
import 'package:spotify_ui_clone/features/profile/edit_profile/widgets/components/save_button.dart';
import 'package:spotify_ui_clone/features/profile/edit_profile/widgets/custom_app_bar.dart';
import 'package:spotify_ui_clone/features/profile/edit_profile/widgets/profile_text_field.dart';
import 'package:spotify_ui_clone/generated/l10n.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    TextEditingController currentPasswordController = TextEditingController();
    TextEditingController newPasswordController = TextEditingController();
    TextEditingController confirmNewPasswordController =
        TextEditingController();
    return BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return Scaffold(
            appBar: CustomAppBar(
              onPressed: () {
                Navigator.of(context).pop();
              },
              title: S.of(context).password,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 7, top: 10),
                    child: Text(
                      S.of(context).password,
                      style: Theme.of(context).xTextTheme.body6,
                    ),
                  ),
                  ProfileTextField(
                    controller: currentPasswordController,
                    obscureText: true,
                    text: S.of(context).current_password,
                    suffixIcon: const Icon(
                      Icons.lock_outlined,
                      color: AppColors.grey,
                      size: 27,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ProfileTextField(
                      controller: newPasswordController,
                      obscureText: true,
                      text: S.of(context).new_password,
                      suffixIcon: const Icon(
                        Icons.lock_outlined,
                        color: AppColors.grey,
                        size: 27,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ProfileTextField(
                      controller: confirmNewPasswordController,
                      obscureText: true,
                      text: S.of(context).confirm_new_password,
                      suffixIcon: const Icon(
                        Icons.lock_outlined,
                        color: AppColors.grey,
                        size: 27,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: SaveButton(
                        onPressed: () async {
                          final currentPassword =
                              currentPasswordController.text;
                          final newPassword = newPasswordController.text;
                          final confirmNewPassword =
                              confirmNewPasswordController.text;
                          if (newPassword == confirmNewPassword) {
                            context
                                .read<AuthCubit>()
                                .changePassword(
                                  oldPassword: currentPassword,
                                  newPassword: newPassword,
                                )
                                .then(
                              (status) {
                                if (state.status == Status.success) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        S.of(context).password_has_been_changed,
                                        style: Theme.of(context).xTextTheme.h3,
                                      ),
                                      backgroundColor: AppColors.green,
                                    ),
                                  );
                                }
                              },
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  S.of(context).error_password_does_not_match,
                                  style: Theme.of(context).xTextTheme.h3,
                                ),
                                backgroundColor: AppColors.green,
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

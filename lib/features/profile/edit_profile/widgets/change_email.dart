import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_ui_clone/app/core/config/enums.dart';
import 'package:spotify_ui_clone/app/core/theme/app_colors.dart';
import 'package:spotify_ui_clone/app/core/theme/app_text_theme_extension.dart';
import 'package:spotify_ui_clone/app/core/utils/injection_container.dart';
import 'package:spotify_ui_clone/app/cubit/auth_cubit.dart';
import 'package:spotify_ui_clone/features/profile/edit_profile/widgets/custom_app_bar.dart';
import 'package:spotify_ui_clone/features/profile/edit_profile/widgets/profile_text_field.dart';
import 'package:spotify_ui_clone/features/profile/edit_profile/widgets/components/save_button.dart';
import 'package:spotify_ui_clone/generated/l10n.dart';

class ChangeEmail extends StatelessWidget {
  const ChangeEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController newEmailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return Scaffold(
            appBar: CustomAppBar(
              onPressed: () {
                Navigator.of(context).pop();
              },
              title: S.of(context).email_settings,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 7),
                    child: Text(
                      S.of(context).new_email,
                      style: Theme.of(context).xTextTheme.body6,
                    ),
                  ),
                  ProfileTextField(
                    controller: newEmailController,
                    obscureText: false,
                    text: S.of(context).change_email,
                    suffixIcon: const Icon(
                      Icons.mail_outlined,
                      color: AppColors.grey,
                      size: 27,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 7, top: 10),
                    child: Text(
                      S.of(context).password,
                      style: Theme.of(context).xTextTheme.body6,
                    ),
                  ),
                  ProfileTextField(
                    controller: passwordController,
                    obscureText: true,
                    text: S.of(context).password,
                    suffixIcon: const Icon(
                      Icons.lock_outlined,
                      color: AppColors.grey,
                      size: 27,
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: SaveButton(
                        onPressed: () async {
                          final newEmail = newEmailController.text;
                          final password = passwordController.text;
                          if (newEmail.isNotEmpty && password.isNotEmpty) {
                            context.read<AuthCubit>().changeEmail(
                                  newEmail: newEmail,
                                  password: password,
                                );
                            if (state.status == Status.success) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    S.of(context).email_has_been_changed,
                                    style: Theme.of(context).xTextTheme.h3,
                                  ),
                                  backgroundColor: AppColors.green,
                                ),
                              );
                            } else if (state.status == Status.error) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    S
                                        .of(context)
                                        .an_error_occurred_while_changing_the_email_address,
                                    style: Theme.of(context).xTextTheme.h3,
                                  ),
                                  backgroundColor: AppColors.green,
                                ),
                              );
                            }
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

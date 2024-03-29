import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_ui_clone/app/core/theme/app_colors.dart';
import 'package:spotify_ui_clone/app/core/theme/app_text_theme_extension.dart';
import 'package:spotify_ui_clone/app/core/utils/injection_container.dart';
import 'package:spotify_ui_clone/domain/models/edit_profile/item_model_edit_profile.dart';
import 'package:spotify_ui_clone/features/profile/edit_profile/cubit/edit_profile_cubit.dart';
import 'package:spotify_ui_clone/features/profile/edit_profile/widgets/change_email.dart';
import 'package:spotify_ui_clone/features/profile/edit_profile/widgets/change_password.dart';
import 'package:spotify_ui_clone/features/profile/edit_profile/widgets/custom_app_bar.dart';
import 'package:spotify_ui_clone/features/profile/edit_profile/widgets/settings_content.dart';
import 'package:spotify_ui_clone/generated/l10n.dart';

class EditProfileContent extends StatelessWidget {
  const EditProfileContent({
    super.key,
    required this.itemModelEditProfile,
  });

  final ItemModelEditProfile itemModelEditProfile;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EditProfileCubit>()..getItemModelEditProfile(),
      child: BlocBuilder<EditProfileCubit, EditProfileState>(
        builder: (context, state) {
          return Scaffold(
            appBar: CustomAppBar(
              onPressed: () {
                Navigator.of(context).pop();
              },
              title: S.of(context).settings,
            ),
            body: Container(
              padding: const EdgeInsets.only(
                left: 16,
                top: 25,
                right: 16,
              ),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.person,
                        color: AppColors.green,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        S.of(context).account,
                        style: Theme.of(context).xTextTheme.body1,
                      ),
                    ],
                  ),
                  const Divider(
                    height: 15,
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SettingsContent(
                    text: S.of(context).social,
                    onPressed: () {},
                  ),
                  SettingsContent(
                    text: S.of(context).content_settings,
                    onPressed: () {},
                  ),
                  SettingsContent(
                    text: S.of(context).language,
                    onPressed: () {},
                  ),
                  SettingsContent(
                    text: S.of(context).change_email,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const ChangeEmail(),
                        ),
                      );
                    },
                  ),
                  SettingsContent(
                    text: S.of(context).change_password,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const ChangePassword(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.lock,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        S.of(context).privacy_policy,
                        style: Theme.of(context).xTextTheme.body1,
                      ),
                    ],
                  ),
                  const Divider(
                    height: 15,
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          itemModelEditProfile.content.toString(),
                          style: Theme.of(context).xTextTheme.body2,
                        ),
                      ),
                    ],
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

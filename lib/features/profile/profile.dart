import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_ui_clone/app/core/config/enums.dart';
import 'package:spotify_ui_clone/app/core/theme/app_colors.dart';
import 'package:spotify_ui_clone/app/core/theme/app_text_theme_extension.dart';
import 'package:spotify_ui_clone/app/core/utils/injection_container.dart';
import 'package:spotify_ui_clone/features/auth/cubit/auth_cubit.dart';
import 'package:spotify_ui_clone/features/profile/edit_profile/cubit/edit_profile_cubit.dart';
import 'package:spotify_ui_clone/features/profile/edit_profile/edit_profile_content.dart';
import 'package:spotify_ui_clone/gen/assets.gen.dart';
import 'package:spotify_ui_clone/generated/l10n.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

SizedBox customSizedBox = const SizedBox(
  height: 10,
);

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.white.withOpacity(0.3),
                  AppColors.white.withOpacity(0.1),
                  AppColors.dark.withOpacity(0),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.white.withOpacity(0),
                  AppColors.dark.withOpacity(1),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
              child: SafeArea(
                child: Column(
                  children: [
                    Center(
                      child: CircleAvatar(
                        backgroundImage: Assets.user.image().image,
                        radius: 70,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                S.of(context).numberfive,
                                style: Theme.of(context).xTextTheme.h0,
                              ),
                              customSizedBox,
                              Text(
                                S.of(context).music,
                                style: Theme.of(context).xTextTheme.h1,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                S.of(context).numberfiveone,
                                style: Theme.of(context).xTextTheme.h0,
                              ),
                              customSizedBox,
                              Text(
                                S.of(context).followers,
                                style: Theme.of(context).xTextTheme.h1,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                S.of(context).numbertwo,
                                style: Theme.of(context).xTextTheme.h0,
                              ),
                              customSizedBox,
                              Text(
                                S.of(context).follow,
                                style: Theme.of(context).xTextTheme.h1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: BlocProvider(
                        create: (context) => getIt<EditProfileCubit>()
                          ..getItemModelEditProfile(),
                        child: BlocConsumer<EditProfileCubit, EditProfileState>(
                          listener: (context, state) {
                            if (state.status == Status.error) {
                              final errorMessage = state.errorMessage ??
                                  S.of(context).unkown_error;
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(errorMessage),
                                  backgroundColor: AppColors.red,
                                ),
                              );
                            }
                          },
                          builder: (context, state) {
                            final itemModelEditProfile = state.model;

                            return Column(
                              children: [
                                if (itemModelEditProfile != null)
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (_) => EditProfileContent(
                                            itemModelEditProfile:
                                                itemModelEditProfile,
                                          ),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      fixedSize: const Size(160, 50),
                                      backgroundColor: AppColors.green,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(200),
                                      ),
                                    ),
                                    child: Text(
                                      S.of(context).edit_profile,
                                      style: Theme.of(context).xTextTheme.h2,
                                    ),
                                  ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<AuthCubit>().signOut();
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(160, 50),
                        backgroundColor: AppColors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(200),
                        ),
                      ),
                      child: Text(
                        S.of(context).sign_out,
                        style: Theme.of(context).xTextTheme.h2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

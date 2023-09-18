import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_ui_clone/app/core/config/enums.dart';
import 'package:spotify_ui_clone/app/core/theme/app_colors.dart';
import 'package:spotify_ui_clone/app/core/utils/injection_container.dart';
import 'package:spotify_ui_clone/app/cubit/auth_cubit.dart';
import 'package:spotify_ui_clone/features/profile/edit_profile/cubit/edit_profile_cubit.dart';
import 'package:spotify_ui_clone/features/profile/edit_profile/edit_profile_content.dart';
import 'package:spotify_ui_clone/generated/l10n.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

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
                    const Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/user.jpg'),
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
                                style: const TextStyle(
                                  color: AppColors.white,
                                  fontSize: 35,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                S.of(context).music,
                                style: const TextStyle(
                                  color: AppColors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                S.of(context).numberfiveone,
                                style: const TextStyle(
                                  color: AppColors.white,
                                  fontSize: 35,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                S.of(context).followers,
                                style: const TextStyle(
                                  color: AppColors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                S.of(context).numbertwo,
                                style: const TextStyle(
                                  color: AppColors.white,
                                  fontSize: 35,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                S.of(context).follow,
                                style: const TextStyle(
                                  color: AppColors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w300,
                                ),
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
                                      fixedSize: const Size(140, 50),
                                      backgroundColor: AppColors.green,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(200),
                                      ),
                                    ),
                                    child: Text(
                                      S.of(context).edit_profile,
                                      style: const TextStyle(
                                        color: AppColors.white,
                                        fontSize: 20,
                                      ),
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
                        fixedSize: const Size(140, 50),
                        backgroundColor: AppColors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(200),
                        ),
                      ),
                      child: Text(
                        S.of(context).sign_out,
                        style: const TextStyle(
                          color: AppColors.white,
                          fontSize: 20,
                        ),
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

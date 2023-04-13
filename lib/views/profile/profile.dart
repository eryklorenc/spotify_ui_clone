import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_ui_clone/app/core/enums.dart';
import 'package:spotify_ui_clone/app/core/injection_container.dart';
import 'package:spotify_ui_clone/app/cubit/auth_cubit.dart';
import 'package:spotify_ui_clone/views/profile/edit_profile/cubit/edit_profile_cubit.dart';
import 'package:spotify_ui_clone/views/profile/edit_profile/edit_profile_content.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
              const Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          '501',
                          style: TextStyle(color: Colors.white, fontSize: 35),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Music',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          '5.1K',
                          style: TextStyle(color: Colors.white, fontSize: 35),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          '2.3K',
                          style: TextStyle(color: Colors.white, fontSize: 35),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Follow',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w300),
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
                        final errorMessage =
                            state.errorMessage ?? 'Unkown error';
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(errorMessage),
                            backgroundColor: Colors.red,
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
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(200),
                                ),
                              ),
                              child: const Text(
                                'Edit Profile',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
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
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(200),
                  ),
                ),
                child: const Text(
                  'Sign out',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

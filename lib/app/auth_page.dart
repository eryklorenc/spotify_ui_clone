import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_ui_clone/app/core/injection_container.dart';
import 'package:spotify_ui_clone/app/cubit/auth_cubit.dart';
import 'package:spotify_ui_clone/app/login_page.dart';
import 'package:spotify_ui_clone/navigations/tabbar.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          final user = state.user;
          if (user == null) {
            return const LoginPage();
          }
          return const Tabbar();
        },
      ),
    );
  }
}

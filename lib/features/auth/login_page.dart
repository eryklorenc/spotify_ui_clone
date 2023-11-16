import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_ui_clone/app/core/theme/app_colors.dart';
import 'package:spotify_ui_clone/app/core/theme/app_text_theme_extension.dart';
import 'package:spotify_ui_clone/app/core/utils/injection_container.dart';
import 'package:spotify_ui_clone/app/widgets/auth_text_field.dart';
import 'package:spotify_ui_clone/app/widgets/components/account_button.dart';
import 'package:spotify_ui_clone/app/widgets/components/auth_button.dart';
import 'package:spotify_ui_clone/features/auth/cubit/auth_cubit.dart';
import 'package:spotify_ui_clone/gen/assets.gen.dart';
import 'package:spotify_ui_clone/generated/l10n.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final emailController = TextEditingController();
final passwordController = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  var isCreatingAccount = false;
  var errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
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
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(35),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 70,
                            child: Assets.logo3.image(),
                          ),
                          const SizedBox(
                            height: 70,
                          ),
                          Text(
                            S.of(context).millions_of_songs,
                            style: Theme.of(context).xTextTheme.message1,
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            S.of(context).free_on_spotify,
                            style: Theme.of(context).xTextTheme.message1,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          AuthTextField(
                            controller: emailController,
                            hintText: S.of(context).email,
                            suffixIcon: const Icon(
                              Icons.email_outlined,
                              color: AppColors.black,
                            ),
                            obscureText: false,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          AuthTextField(
                            controller: passwordController,
                            hintText: S.of(context).password,
                            suffixIcon: const Icon(
                              Icons.lock_outline,
                              color: AppColors.black,
                            ),
                            obscureText: true,
                          ),
                          Text(errorMessage),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 50,
                            width: 350,
                            child: AuthButton(
                              onPressed: () async {
                                if (isCreatingAccount == true) {
                                  try {
                                    context.read<AuthCubit>().register(
                                          email: emailController.text,
                                          password: passwordController.text,
                                        );
                                  } catch (error) {
                                    setState(() {
                                      errorMessage = error.toString();
                                    });
                                  }
                                } else {
                                  try {
                                    context.read<AuthCubit>().signIn(
                                          email: emailController.text,
                                          password: passwordController.text,
                                        );
                                  } catch (error) {
                                    setState(() {
                                      errorMessage = error.toString();
                                    });
                                  }
                                }
                              },
                              isCreatingAccount: isCreatingAccount,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Divider(
                                  color: AppColors.grey,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                S.of(context).or,
                                style: const TextStyle(
                                  color: AppColors.grey,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Expanded(
                                child: Divider(
                                  color: AppColors.grey,
                                ),
                              ),
                            ],
                          ),
                          if (isCreatingAccount == true) ...[
                            AccountButton(
                              onPressed: () {
                                setState(() {
                                  isCreatingAccount = false;
                                });
                              },
                              accountInfo:
                                  S.of(context).already_have_an_account,
                              sign: S.of(context).sign_in,
                            ),
                          ],
                          if (isCreatingAccount == false) ...[
                            AccountButton(
                              accountInfo: S.of(context).don_t_have_an_account,
                              onPressed: () {
                                setState(() {
                                  isCreatingAccount = true;
                                });
                              },
                              sign: S.of(context).sign_up,
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

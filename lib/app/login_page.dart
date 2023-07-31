import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_ui_clone/app/core/injection_container.dart';
import 'package:spotify_ui_clone/app/cubit/auth_cubit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

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
                        Colors.white.withOpacity(0.3),
                        Colors.white.withOpacity(0.1),
                        Colors.black.withOpacity(0),
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
                        Colors.white.withOpacity(0),
                        Colors.black.withOpacity(1),
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
                            child: Image.asset('assets/logo3.png'),
                          ),
                          const SizedBox(
                            height: 70,
                          ),
                          const Text(
                            'Millions of songs.',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            'Free on Spotify.',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: emailController,
                            decoration: const InputDecoration(
                              labelStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              hintText: 'Email',
                              suffixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextField(
                            controller: passwordController,
                            decoration: const InputDecoration(
                              labelStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              hintText: 'Password',
                              suffixIcon: Icon(
                                Icons.lock_outline,
                                color: Colors.black,
                              ),
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
                            child: ElevatedButton(
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
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(31),
                                  ),
                                  backgroundColor: Colors.white),
                              child: Text(
                                isCreatingAccount == true
                                    ? 'REGISTER'
                                    : 'LOG IN',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "OR",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Divider(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          if (isCreatingAccount == true) ...[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Already have an account?",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      isCreatingAccount = false;
                                    });
                                  },
                                  child: const Text(
                                    "Sign In",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                          if (isCreatingAccount == false) ...[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Don't have an account?",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      isCreatingAccount = true;
                                    });
                                  },
                                  child: const Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
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

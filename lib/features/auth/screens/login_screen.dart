import 'package:faculty_app/config/routes/app_routes.dart';
import 'package:faculty_app/core/utils/app_colors.dart';
import 'package:faculty_app/core/utils/media_query_values.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:faculty_app/core/widgets/default_button.dart';
import 'package:faculty_app/core/widgets/default_text_button.dart';
import 'package:faculty_app/features/auth/screens/cubit/login/login_cubit.dart';
import 'package:faculty_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/widgets/default_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey();

  String selectedRole = 'Admin';
  bool _passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Colors.green,
              content: Text(
                'Login Success',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          );
          if (selectedRole == 'Admin') {
            Navigator.pushNamed(context, AppRouter.adminHomeScreen);
          } else if (selectedRole == 'Doctor') {
            Navigator.pushNamed(context, AppRouter.doctorHomeScreen);
          } else if (selectedRole == 'Student') {
            Navigator.pushNamed(context, AppRouter.studentHomeScreen);
          }
        } else if (state is LoginFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.red,
              content: Text(
                state.message,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xffe9e9e9),
          body: Form(
            key: formKey,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                        width: context.width,
                        child: Image.asset(
                          Assets.imagesAuthImage,
                          fit: BoxFit.cover,
                        ))),
                Container(
                  height: context.height * 0.55,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      )),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Welcome !',
                            style: Styles.textStyle36,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomFormField(
                            controller: emailController,
                            labelText: 'Email',
                            labelColor: Colors.black,
                            keyboardType: TextInputType.emailAddress,
                            hintText: 'example@gmail.com',
                            textAlign: TextAlign.left,
                            suffixIcon: const Icon(
                              Icons.email_outlined,
                              size: 22,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomFormField(
                            labelText: 'Password',
                            labelColor: Colors.black,
                            controller: passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: _passwordVisible,
                            maxLines: 1,
                            hintText: 'Enter password',
                            textAlign: TextAlign.left,
                            suffixIcon: IconButton(
                              icon: _passwordVisible
                                  ? const Icon(Icons.visibility_rounded)
                                  : Icon(
                                      Icons.visibility_off_rounded,
                                      color: AppColors.primary,
                                    ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          DefaultTextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, AppRouter.forgetPasswordScreen);
                            },
                            child: const Text(
                              'Forgot your password ?',
                              style: Styles.textStyle16,
                            ),
                          ),
                          DropdownButtonFormField<String>(
                            value: selectedRole,
                            items: const [
                              DropdownMenuItem(
                                value: 'Admin',
                                child: Text('Admin'),
                              ),
                              DropdownMenuItem(
                                value: 'Doctor',
                                child: Text('Doctor'),
                              ),
                              DropdownMenuItem(
                                value: 'Student',
                                child: Text('Student'),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                selectedRole = value!;
                              });
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          state is LoginLoading
                              ? const Center(child: CircularProgressIndicator())
                              : CustomMaterialButton(
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      formKey.currentState!.save();

                                      BlocProvider.of<LoginCubit>(context)
                                          .userLogin(
                                        email: emailController.text,
                                        password: passwordController.text,
                                        role: selectedRole.toLowerCase(),
                                      );
                                    }
                                  },
                                  text: 'Login',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

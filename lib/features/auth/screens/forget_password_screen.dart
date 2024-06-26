import 'package:faculty_app/config/routes/app_routes.dart';
import 'package:faculty_app/core/utils/media_query_values.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:faculty_app/core/widgets/default_button.dart';
import 'package:faculty_app/generated/assets.dart';
import 'package:flutter/material.dart';
import '../../../core/widgets/default_form_field.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<ForgetPasswordScreen> {
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  String selectedRole = 'Admin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe9e9e9),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: SizedBox(
                  width: context.width,
                  child: Image.asset(
                    Assets.imagesAuthImage,
                    fit: BoxFit.cover,
                  ))),
          Expanded(
            flex: 2,
            child: Container(
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
                        'Forgot Password',
                        style: Styles.textStyle36,
                      ),
                      Text(
                        'Enter your email account to reset your password',
                        style: Styles.textStyle14
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 20,
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
                        height: 40,
                      ),
                      CustomMaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, AppRouter.verificationScreen);
                        },
                        text: 'send code',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

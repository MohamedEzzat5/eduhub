
import 'package:faculty_app/config/routes/app_routes.dart';
import 'package:faculty_app/core/utils/app_colors.dart';
import 'package:faculty_app/core/utils/media_query_values.dart';
import 'package:faculty_app/core/utils/style.dart';
import 'package:faculty_app/core/widgets/default_button.dart';
import 'package:faculty_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/widgets/default_form_field.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<ResetPasswordScreen> {

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey();
  bool _passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: const Color(0xffe9e9e9),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Expanded(
                child: SizedBox(
                    width: context.width,
                    child: Image.asset(Assets.imagesAuthImage,fit: BoxFit.fill,))),
            Container(
              height: context.height*0.55,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30),)
              ),
              child:  SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Reset Password',style: Styles.textStyle36,),
                      const SizedBox(height: 15,),
                      CustomFormField(
                        labelText: 'New Password',
                        labelColor: Colors.black,
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _passwordVisible,
                        maxLines: 1,
                        hintText: 'Enter your new password',
                        textAlign: TextAlign.left,
                        suffixIcon:  IconButton(
                          icon: _passwordVisible? const Icon(Icons.visibility_rounded):
                          Icon(Icons.visibility_off_rounded,color: AppColors.primary,),
                          onPressed: (){
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomFormField(
                        labelText: 'Confirm Password',
                        labelColor: Colors.black,
                        controller: confirmPasswordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _passwordVisible,
                        maxLines: 1,
                        hintText: 'Enter the same password',
                        textAlign: TextAlign.left,
                        suffixIcon:  IconButton(
                          icon: _passwordVisible? const Icon(Icons.visibility_rounded):
                          Icon(Icons.visibility_off_rounded,color: AppColors.primary,),
                          onPressed: (){
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                      ),


                      const SizedBox(height: 25,),
                      CustomMaterialButton(onPressed: (){
                        GoRouter.of(context).push(AppRouter.adminHomeScreen);

                      }, text: 'Continue',fontWeight: FontWeight.w600,fontSize: 20,),



                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

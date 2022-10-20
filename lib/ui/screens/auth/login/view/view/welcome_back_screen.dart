import 'package:flutter/material.dart';
import 'package:omney/core/middle_ware/view_model.dart';
import 'package:omney/main.dart';
import 'package:omney/ui/screens/auth/login/login_entity/login_entity.dart';
import 'package:omney/ui/screens/auth/login/view/view/welcome_back_screen.form.dart';
import 'package:omney/ui/utils/utils/AppValidator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import '../../../../../../core/core_folder/app/app.locator.dart';
import '../../../../../../core/core_folder/app/app.router.dart';
import '../../../../../utils/color/app_color_utils.dart';
import '../../../../../utils/widgets/button_widget.dart';
import '../../../../../utils/widgets/text_form_widget.dart';
import '../../../../../utils/widgets/text_view.dart';

@FormView(
    fields: [FormTextField(name: 'username'), FormTextField(name: 'password')])
class WelcomeBackScreen extends StatelessWidget with $WelcomeBackScreen {
  WelcomeBackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ViewModel>.reactive(
        disposeViewModel: false,
        viewModelBuilder: () => locator<ViewModel>(),
        builder: (_, ViewModel model, __) => Scaffold(
            backgroundColor: AppColor.white,
            body: SingleChildScrollView(
                padding: const EdgeInsets.all(22),
                child: Form(
                  key: model.formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        Center(
                          child: Image.asset(
                            "assets/gif/login.gif",
                            height: 200.0,
                            width: 300.0,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Align(
                            alignment: Alignment.center,
                            child: TextView(
                                text: 'Welcome Back',
                                fontSize: 30,
                                fontWeight: FontWeight.w700)),
                        const SizedBox(
                          height: 20,
                        ),
                        const TextView(
                          text: 'Email Address',
                          color: AppColor.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormWidget(
                          label: 'youremail@example.com',
                          controller: usernameController,
                          validator: AppValidator.validateEmail(),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const TextView(
                          text: 'Password',
                          color: AppColor.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormWidget(
                          label: 'Enter your password',
                          suffixIcon: model.isPasswordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                          controller: passwordController,
                          validator: AppValidator.validatePass(
                              serverError: model.invalidPasswordMsg),
                          onPasswordToggle: model.toggleVisibility,
                          obscureText: model.isPasswordVisible,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                            onTap: () =>
                                navigate.replaceWith(Routes.forgotPassword),
                            child: const TextView(
                              text: 'Forgot your password?',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColor.primary,
                            )),
                        const SizedBox(
                          height: 50,
                        ),
                        ButtonWidget(
                          onTap: () {
                            if (model.formKey.currentState!.validate()) {
                              model.loginUser(
                                  LoginEntity(
                                      username: usernameController.text,
                                      password: passwordController.text),
                                  context);
                            }
                          },
                          width: 250,
                          text: 'Login',
                          color: AppColor.white,
                          loading: model.isBusy,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const TextView(
                              text: 'No account yet? ',
                              color: AppColor.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            InkWell(
                              onTap: () => navigate.pushNamedAndRemoveUntil(
                                  Routes.getStartedScreen),
                              child: const TextView(
                                text: 'Sign Up',
                                color: AppColor.primary,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ]),
                ))));
  }
}

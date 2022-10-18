import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:omney/core/core_folder/app/app.router.dart';
import 'package:omney/main.dart';
import 'package:omney/ui/screens/auth/get_started/get_started_screen.form.dart';
import 'package:omney/ui/utils/color/app_color_utils.dart';
import 'package:omney/ui/utils/utils/AppValidator.dart';
import 'package:omney/ui/utils/widgets/text_form_widget.dart';
import 'package:omney/ui/utils/widgets/text_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import '../../../../core/global_var.dart';
import '../../../../core/middle_ware/view_model.dart';
import '../../../utils/widgets/button_widget.dart';
import '../../../utils/widgets/custom_widget.dart';

@FormView(fields: [
  FormTextField(name: 'firstName'),
  FormTextField(name: 'surname'),
  FormTextField(name: 'gender'),
  FormTextField(name: 'phoneNumber'),
  FormTextField(name: 'dateofBirth'),
  FormTextField(name: 'referrerCode'),
  FormTextField(name: 'email'),
  FormTextField(name: 'confirmPassword'),
  FormTextField(name: 'nationalityId'),
  FormTextField(name: 'password'),
  FormTextField(name: 'channelId'),
  FormTextField(name: 'cSCSNUmber'),
  FormTextField(name: 'deviceToken'),
  FormTextField(name: 'maidenName'),
  FormTextField(name: 'bvn'),
])
class GetStartedScreen extends StatelessWidget with $GetStartedScreen {
  GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ViewModel(context: context),
        builder: (_, ViewModel model, __) {
          return Scaffold(
            backgroundColor: AppColor.white,
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(22),
              child: Form(
                key: model.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Image.asset(
                        "assets/gif/nigeria-flag.gif",
                        height: 80.0,
                        width: 80.0,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: TextView(
                        text: 'Get Started',
                        color: AppColor.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: TextView(
                        text: 'Let’s get to know each other.',
                        color: AppColor.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const TextView(
                      text: 'Nationality',
                      color: AppColor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormWidget(
                      label: 'Select your Nationality',
                      suffixIcon: Icons.arrow_drop_down,
                      controller: nationalityIdController,
                      validator: AppValidator.validateString(),
                      readOnly: true,
                      onTapped: () => showCustomDialog(context, items: [
                        'Nigeria',
                        'Other',
                      ], onTap: (value) {
                        nationalityIdController.text = value;
                        navigate.popRepeated(1);
                      }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextView(
                      text: 'Phone number',
                      color: AppColor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/svg/9ja.svg',
                          height: 30,
                          width: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.arrow_drop_down,
                          color: AppColor.bleugrey,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextFormWidget(
                            label: 'Enter your phone number',
                            controller: phoneNumberController,
                            validator: AppValidator.validatePhone(),
                          ),
                        ),
                      ],
                    ),
                    const TextView(
                      text: 'Email',
                      color: AppColor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormWidget(
                        label: 'Enter your email',
                        controller: emailController,
                        validator: AppValidator.validateEmail()),
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
                      label: 'Create a secure password',
                      suffixIcon: model.isPasswordVisible
                          ? Icons.visibility_off
                          : Icons.visibility,
                      controller: passwordController,
                      validator:
                          AppValidator.validatePass(error: 'Field is required'),
                      onChange: (value) =>
                          model.validatePassword(passwordController.text),
                      onPasswordToggle: model.toggleVisibility,
                      obscureText: model.isPasswordVisible,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        model.is8characters
                            ? const Icon(
                                Icons.check,
                                color: AppColor.green,
                                size: 14,
                              )
                            : const TextView(
                                text: '-',
                                color: AppColor.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextView(
                          text: 'Not less than 8 characters',
                          color: model.is8characters == true
                              ? AppColor.green
                              : AppColor.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7.5,
                    ),
                    Row(
                      children: [
                        model.isUpperCase
                            ? const Icon(
                                Icons.check,
                                color: AppColor.green,
                                size: 14,
                              )
                            : const TextView(
                                text: '-',
                                color: AppColor.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextView(
                          text: 'Must contain a capital letter',
                          color: model.isUpperCase
                              ? AppColor.green
                              : AppColor.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7.5,
                    ),
                    Row(
                      children: [
                        model.isNumber
                            ? const Icon(
                                Icons.check,
                                color: AppColor.green,
                                size: 14,
                              )
                            : const TextView(
                                text: '-',
                                color: AppColor.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextView(
                          text: 'Must contain a number',
                          color: model.isNumber == true
                              ? AppColor.green
                              : AppColor.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 7.5,
                    ),
                    Row(
                      children: [
                        model.isSpecialCharacters
                            ? const Icon(
                                Icons.check,
                                color: AppColor.green,
                                size: 14,
                              )
                            : const TextView(
                                text: '-',
                                color: AppColor.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextView(
                          text: 'Must contain a special character',
                          color: model.isSpecialCharacters
                              ? AppColor.green
                              : AppColor.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text:
                                  'By continuing, you are acknowledging that you have read, understood and agreed to Omney\'s '),
                          TextSpan(
                            text: 'Terms and Conditions',
                            style: TextStyle(color: AppColor.primary),
                          ),
                          TextSpan(text: ' and '),
                          TextSpan(text: 'Privacy Policy'),
                          TextSpan(text: ' as well as to '),
                          TextSpan(
                            text:
                                'DriveWealths\'s Disclosures, W8-Ben acknowledgment',
                            style: TextStyle(color: AppColor.primary),
                          ),
                          TextSpan(text: ' and '),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(color: AppColor.primary),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Column(
                        children: [
                          ButtonWidget(
                            width: 250,
                            text: 'Continue',
                            color: AppColor.white,
                            onTap: () {
                              if (model.formKey.currentState!.validate()) {
                                email = emailController.text;
                                navigate.replaceWith(Routes.welcomeScreen);
                              }
                              model
                                  .validPhoneNumber(phoneNumberController.text);
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const TextView(
                                text: 'Already have an account? ',
                                color: AppColor.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              InkWell(
                                onTap: () => navigate
                                    .navigateTo(Routes.welcomeBackScreen),
                                child: const TextView(
                                  text: 'Login',
                                  color: AppColor.primary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

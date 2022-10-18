import 'package:flutter/material.dart';
import 'package:omney/core/middle_ware/view_model.dart';
import 'package:omney/ui/screens/auth/reset_password/reset_password_entity/reset_password_entity.dart';
import 'package:omney/ui/screens/auth/reset_password/reset_password_screen.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../../../utils/color/app_color_utils.dart';
import '../../../utils/utils/AppValidator.dart';
import '../../../utils/widgets/button_widget.dart';
import '../../../utils/widgets/text_form_widget.dart';
import '../../../utils/widgets/text_view.dart';

@FormView(fields: [
  FormTextField(name: 'NewPassword'),
  FormTextField(name: 'ConfirmPassword'),
])
class ResetPasswordScreen extends StatelessWidget with $ResetPasswordScreen {
  ResetPasswordScreen({super.key, required this.token});

  final String token;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ViewModel>.reactive(
        viewModelBuilder: () => ViewModel(context: context),
        builder: (_, model, __) {
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
                      height: 35,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 8),
                      decoration: const BoxDecoration(
                          color: AppColor.blight,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: AppColor.primary,
                          )),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Image.asset(
                        "assets/gif/forgot-password.gif",
                        height: 200.0,
                        width: 300.0,
                      ),
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
                      label: 'Create a secure password',
                      suffixIcon: model.isPasswordVisible
                          ? Icons.visibility_off
                          : Icons.visibility,
                      controller: NewPasswordController,
                      validator:
                          AppValidator.validatePass(error: 'Field is required'),
                      onChange: (value) =>
                          model.validatePassword(NewPasswordController.text),
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
                    const TextView(
                      text: 'Confirm Password',
                      color: AppColor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormWidget(
                        label: 'Confirm your secured password',
                        controller: ConfirmPasswordController,
                        validator: AppValidator.validatePassword(
                            NewPasswordController)),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    ButtonWidget(
                      width: 250,
                      text: 'Reset',
                      color: AppColor.white,
                      onTap: () => model.resetPassword(
                          resetPasswordEntity: ResetPasswordEntity(
                              token: token,
                              newPassword: NewPasswordController.text,
                              confirmPassword: ConfirmPasswordController.text)),
                      loading: model.isBusy,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

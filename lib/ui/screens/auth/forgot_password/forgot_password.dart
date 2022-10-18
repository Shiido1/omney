import 'package:flutter/material.dart';
import 'package:omney/core/middle_ware/view_model.dart';
import 'package:omney/ui/screens/auth/forgot_password/forgot_password.form.dart';
import 'package:omney/ui/screens/auth/forgot_password/forgot_password_entity/forgot_password_entity.dart';
import 'package:omney/ui/utils/utils/AppValidator.dart';
import 'package:omney/ui/utils/widgets/text_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../../../utils/color/app_color_utils.dart';
import '../../../utils/widgets/button_widget.dart';
import '../../../utils/widgets/text_form_widget.dart';

@FormView(fields: [FormTextField(name: 'email')])
class ForgotPassword extends StatelessWidget with $ForgotPassword {
  ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ViewModel(context: context),
        builder: (_, model, __) => Scaffold(
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
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
                      const Center(
                          child: TextView(
                        text: 'Forgot your Password?',
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      )),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextView(
                        text:
                            'Enter your email address and we will send you a link to reset your password.',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 50,
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
                        validator: AppValidator.validateEmail(),
                        controller: emailController,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      InkWell(
                        onTap: () {
                          if (model.formKey.currentState!.validate()) {
                            model.forgotpasword(
                                forgotPasswordEntity: ForgotPasswordEntity(
                                    email: emailController.text.trim()),
                                contxt: context);
                          }
                        },
                        child: ButtonWidget(
                          width: 250,
                          text: 'Submit',
                          color: AppColor.white,
                          loading: model.isBusy,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Center(
                          child: TextView(
                        text: 'Remember your Password?',
                        color: AppColor.primary,
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                      ))
                    ],
                  ),
                ),
              ),
            ));
  }
}
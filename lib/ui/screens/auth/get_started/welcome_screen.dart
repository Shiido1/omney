import 'dart:io';
import 'package:flutter/material.dart';
import 'package:omney/core/core_folder/app/app.router.dart';
import 'package:omney/core/middle_ware/view_model.dart';
import 'package:omney/main.dart';
import 'package:omney/ui/screens/auth/get_started/sign_up_entity/sign_up_entity.dart';
import 'package:omney/ui/utils/utils/AppValidator.dart';
import 'package:stacked/stacked.dart';
import '../../../../core/global_var.dart';
import '../../../utils/color/app_color_utils.dart';
import '../../../utils/utils/date_picker.dart';
import '../../../utils/widgets/button_widget.dart';
import '../../../utils/widgets/custom_widget.dart';
import '../../../utils/widgets/text_form_widget.dart';
import '../../../utils/widgets/text_view.dart';
import 'get_started_screen.form.dart';

class WelcomeScreen extends StatelessWidget with $GetStartedScreen {
  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ViewModel>.reactive(
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
                        height: 20,
                      ),
                      Center(
                        child: Image.asset(
                          "assets/gif/kyc-character-illustration.gif",
                          height: 200.0,
                          width: 300.0,
                        ),
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: TextView(
                          text: 'Welcome',
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
                          text: 'Kindly enter your details to get started.',
                          color: AppColor.black,
                          textAlign: TextAlign.center,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const TextView(
                        text: 'First Name',
                        color: AppColor.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormWidget(
                        label: 'Enter your First Name',
                        controller: firstNameController,
                        validator: AppValidator.validateString(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextView(
                        text: 'Last Name',
                        color: AppColor.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormWidget(
                        label: 'Enter your Last Name',
                        controller: surnameController,
                        validator: AppValidator.validateString(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextView(
                                  text: 'Date of Birth',
                                  color: AppColor.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormWidget(
                                  label: 'yyyy-mm-dd',
                                  suffixIcon: Icons.calendar_month,
                                  size: 14,
                                  suffixIconColor: AppColor.primary,
                                  readOnly: true,
                                  controller: dateofBirthController,
                                  onTapped: () => pickDate(
                                      context: context,
                                      onChange: (String date) {
                                        dateofBirthController.text = date;
                                      }),
                                  validator: AppValidator.validateString(),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextView(
                                  text: 'Gender',
                                  color: AppColor.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormWidget(
                                  suffixIcon: Icons.arrow_drop_down,
                                  suffixIconColor: AppColor.grey,
                                  controller: genderController,
                                  validator: AppValidator.validateString(),
                                  readOnly: true,
                                  onTapped: () =>
                                      showCustomDialog(context, items: [
                                    'male',
                                    'female',
                                  ], onTap: (value) {
                                    genderController.text = value;
                                    navigate.popRepeated(1);
                                  }),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextView(
                        text: 'Maiden Name',
                        color: AppColor.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormWidget(
                          label: 'Enter your Maiden Name',
                          controller: maidenNameController,
                          validator: AppValidator.validateString()),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextView(
                        text: 'BVN',
                        color: AppColor.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormWidget(
                          label: 'Enter your BV Number',
                          controller: bvnController,
                          validator: AppValidator.validateBvn()),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: 'Referral Code',
                                style: TextStyle(
                                    color: AppColor.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            TextSpan(
                              text: '(Optional)',
                              style: TextStyle(color: AppColor.bleugrey),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormWidget(
                        label: 'Enter your referral code here',
                        controller: referrerCodeController,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ButtonWidget(
                          width: 250,
                          text: 'Continue',
                          color: AppColor.white,
                          loading: model.isBusy,
                          onTap: () {
                            if (model.formKey.currentState!.validate()) {
                              model.signUpUser(
                                  SignUpEntity(
                                      firstName:
                                          firstNameController.text.trim(),
                                      surname: surnameController.text.trim(),
                                      phoneNumber: '234$phoneNumber',
                                      password: passwordController.text.trim(),
                                      channelId: "2",
                                      confirmPassword:
                                          passwordController.text.trim(),
                                      gender: genderController.text == 'male'
                                          ? 1
                                          : 2,
                                      dateofBirth:
                                          dateofBirthController.text.trim(),
                                      referrerCode: referrerCodeController.text,
                                      email: emailController.text.trim(),
                                      nationalityId:
                                          nationalityIdController.text ==
                                                  'Nigeria'
                                              ? "1"
                                              : "2",
                                      cscsnUmber: "3",
                                      deviceToken: Platform.isIOS
                                          ? deviceToken
                                          : deviceTokenAndroid,
                                      maidenName: maidenNameController.text,
                                      bvn: bvnController.text),
                                  context);
                              name = firstNameController.text;
                            }
                          }),
                      const SizedBox(
                        height: 10,
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
                            onTap: () =>
                                navigate.replaceWith(Routes.welcomeBackScreen),
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
              ),
            ));
  }
}

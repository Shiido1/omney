import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omney/ui/screens/auth/get_started/get_started_screen.form.dart';
import 'package:omney/ui/screens/auth/get_started/sign_up_entity/sign_up_entity.dart';
import 'package:stacked/stacked.dart';

import '../../../../core/core_folder/app/app.router.dart';
import '../../../../core/global_var.dart';
import '../../../../core/middle_ware/view_model.dart';
import '../../../../main.dart';
import '../../../utils/color/app_color_utils.dart';
import '../../../utils/utils/AppValidator.dart';
import '../../../utils/utils/date_picker.dart';
import '../../../utils/widgets/button_widget.dart';
import '../../../utils/widgets/custom_widget.dart';
import '../../../utils/widgets/text_form_widget.dart';
import '../../../utils/widgets/text_view.dart';

class WelcomeScreenLocal extends StatelessWidget with $GetStartedScreen {
  WelcomeScreenLocal({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ViewModel(context: context),
        builder: (_, model, __) {
          print('first field ${model.disabled.toString()}');
          return Scaffold(
            backgroundColor: AppColor.white,
            body: SingleChildScrollView(
              padding: EdgeInsets.all(30.r),
              child: Form(
                key: model.formKeyLogin,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 4.h,
                    ),
                    Center(
                      child: Image.asset(
                        "assets/gif/kyc-character-illustration.gif",
                        height: 200.0,
                        width: 300.0,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: TextView(
                        text: 'Let’s Get Started',
                        color: AppColor.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: TextView(
                        text:
                            'Lets confirm you are the original owner of this account.',
                        color: AppColor.black,
                        textAlign: TextAlign.center,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    TextView(
                      text: 'BVN',
                      color: AppColor.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    TextFormWidget(
                        label: 'Enter your BVN Number',
                        controller: bvnController,
                        keyboardType: TextInputType.number,
                        onChange: (value) {
                          if (value.isNotEmpty) {
                            model.isDisable();
                            print('text field ${model.disabled}');
                          }
                        },
                        validator: AppValidator.validateBvn()),
                    SizedBox(
                      height: 22.h,
                    ),
                    TextView(
                      text: 'Date of Birth',
                      color: AppColor.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormWidget(
                      label: 'dd-mm-yyyy',
                      suffixIcon: Icons.calendar_month,
                      size: 14,
                      suffixIconColor: AppColor.primary,
                      readOnly: true,
                      controller: dateofBirthController,
                      onChange: (value) {
                        model.isDisable;
                      },
                      onTapped: () => pickDate(
                          context: context,
                          onChange: (String date) {
                            dateofBirthController.text = date;
                          }),
                      validator: AppValidator.validateString(),
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    TextView(
                      text: 'Gender',
                      color: AppColor.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormWidget(
                      suffixIcon: Icons.arrow_drop_down,
                      suffixIconColor: AppColor.grey,
                      controller: genderController,
                      validator: AppValidator.validateString(),
                      readOnly: true,
                      onTapped: () => showCustomDialog(context, items: [
                        'male',
                        'female',
                      ], onTap: (value) {
                        genderController.text = value;
                        navigate.popRepeated(1);
                      }),
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    TextView(
                      text: 'Last Name',
                      color: AppColor.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormWidget(
                      label: 'Enter your Last Name',
                      controller: surnameController,
                      keyboardType: TextInputType.name,
                      validator: AppValidator.validateName(),
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    TextView(
                      text: 'Maiden Name',
                      color: AppColor.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormWidget(
                        label: 'Enter your Maiden Name',
                        controller: maidenNameController,
                        keyboardType: TextInputType.name,
                         onChange: (value) {
                            if (value.isNotEmpty) {
                              model.isDisable();
                            } else {
                              model.isNotDisable();
                            }
                          },
                        validator: AppValidator.validateName()),
                    SizedBox(
                      height: 22.h,
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'Referral Code',
                              style: TextStyle(
                                  color: AppColor.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500)),
                          const TextSpan(
                            text: '(Optional)',
                            style: TextStyle(color: AppColor.bleugrey),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormWidget(
                      label: 'Enter your referral code here',
                      controller: referrerCodeController,
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    ButtonWidget(
                        width: 250,
                        text: 'Continue',
                        color: AppColor.white,
                        loading: model.isBusy,
                        colorGrey: model.disabled
                                ? AppColor.primary.withOpacity(0.4)
                                : AppColor.primary,
                        onTap: () {
                          if (model.formKeyLogin.currentState!.validate()) {
                            model.signUpUser(
                                SignUpEntity(
                                    firstName: "Local",
                                    surname: surnameController.text.trim(),
                                    phoneNumber: '234$phoneNumber',
                                    password: passwordController.text.trim(),
                                    channelId: "2",
                                    confirmPassword:
                                        passwordController.text.trim(),
                                    gender:
                                        genderController.text == 'male' ? 1 : 2,
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
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextView(
                          text: 'Already have an account? ',
                          color: AppColor.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        InkWell(
                          onTap: () =>
                              navigate.replaceWith(Routes.welcomeBackScreen),
                          child: TextView(
                            text: 'Login',
                            color: AppColor.primary,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
              padding: EdgeInsets.all(34.r),
              child: Form(
                key: model.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 3.h,
                    ),
                    Center(
                      child: Image.asset(
                        "assets/gif/nigeria-flag.gif",
                        height: 80.0,
                        width: 80.0,
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: TextView(
                        text: 'Get Started',
                        color: AppColor.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 1.2.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: TextView(
                        text: 'Let’s get to know each other.',
                        color: AppColor.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    TextView(
                      text: 'Nationality',
                      color: AppColor.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormWidget(
                      label: 'Select your Nationality',
                      suffixIcon: Icons.arrow_drop_down,
                      controller: nationalityIdController,
                      validator: AppValidator.validateNationality(),
                      readOnly: true,
                      onTapped: () => showCustomDialog(context, items: [
                        'Nigeria',
                        'Other',
                      ], onTap: (value) {
                        nationalityIdController.text = value;
                        navigate.popRepeated(1);
                      }),
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    TextView(
                      text: 'Phone number',
                      color: AppColor.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/svg/9ja.svg',
                          height: 32.h,
                          width: 25.w,
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        const Icon(
                          Icons.arrow_drop_down,
                          color: AppColor.bleugrey,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Expanded(
                          child: TextFormWidget(
                            label: 'Enter your phone number',
                            controller: phoneNumberController,
                            keyboardType: TextInputType.number,
                            validator: AppValidator.validatePhone(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    TextView(
                      text: 'Email',
                      color: AppColor.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormWidget(
                        label: 'Enter your email',
                        controller: emailController,
                        validator: AppValidator.validateEmail()),
                    SizedBox(
                      height: 22.h,
                    ),
                    TextView(
                      text: 'Password',
                      color: AppColor.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormWidget(
                      label: 'Create a secure password',
                      suffixIcon: model.isPasswordVisible
                          ? Icons.visibility_off
                          : Icons.visibility,
                      onPasswordToggle: model.toggleVisibility,
                      obscureText: model.isPasswordVisible,
                      controller: passwordController,
                      validator: AppValidator.validatePass(
                          error: 'Enter a valid password'),
                      onChange: (value) async {
                        await model.validatePassword(passwordController.text);
                        if (value.isNotEmpty) {
                          model.isDisable();
                        } else {
                          model.isNotDisable();
                        }
                      },
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Row(
                      children: [
                        model.is8characters
                            ? Icon(
                                Icons.check,
                                color: AppColor.green,
                                size: 14.sp,
                              )
                            : TextView(
                                text: '-',
                                color: AppColor.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                        SizedBox(
                          width: 2.w,
                        ),
                        TextView(
                          text: 'Not less than 8 characters',
                          color: model.is8characters == true
                              ? AppColor.green
                              : AppColor.grey,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      children: [
                        model.isUpperCase
                            ? Icon(
                                Icons.check,
                                color: AppColor.green,
                                size: 14.sp,
                              )
                            : TextView(
                                text: '-',
                                color: AppColor.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                        SizedBox(
                          width: 2.w,
                        ),
                        TextView(
                          text: 'Must contain a capital letter',
                          color: model.isUpperCase
                              ? AppColor.green
                              : AppColor.grey,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      children: [
                        model.isNumber
                            ? Icon(
                                Icons.check,
                                color: AppColor.green,
                                size: 14.sp,
                              )
                            : TextView(
                                text: '-',
                                color: AppColor.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                        SizedBox(
                          width: 2.w,
                        ),
                        TextView(
                          text: 'Must contain a number',
                          color: model.isNumber == true
                              ? AppColor.green
                              : AppColor.grey,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      children: [
                        model.isSpecialCharacters
                            ? Icon(
                                Icons.check,
                                color: AppColor.green,
                                size: 14.sp,
                              )
                            : TextView(
                                text: '-',
                                color: AppColor.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                        SizedBox(
                          width: 2.w,
                        ),
                        TextView(
                          text: 'Must contain a special character',
                          color: model.isSpecialCharacters
                              ? AppColor.green
                              : AppColor.grey,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
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
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: Column(
                        children: [
                          ButtonWidget(
                            colorGrey: model.disabled
                                ? AppColor.primary.withOpacity(0.4)
                                : AppColor.primary,
                            width: 250,
                            text: 'Continue',
                            color: AppColor.white,
                            onTap: () {
                              if (model.formKey.currentState!.validate()) {
                                email = emailController.text;
                                // navigate.replaceWith(Routes.welcomeScreen);
                                if (nationalityIdController.text == 'Nigeria') {
                                  navigate
                                      .navigateTo(Routes.welcomeScreenLocal);
                                } else {
                                  navigate.navigateTo(Routes.welcomeScreen);
                                }
                              }
                              model
                                  .validPhoneNumber(phoneNumberController.text);
                            },
                          ),
                          SizedBox(
                            height: 10.h,
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
                                onTap: () => navigate
                                    .navigateTo(Routes.welcomeBackScreen),
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
                  ],
                ),
              ),
            ),
          );
        });
  }
}

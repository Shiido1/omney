import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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


  String? finalValue;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ViewModel>.reactive(
        viewModelBuilder: () => ViewModel(context: context),
        builder: (_, model, __) => Scaffold(
              backgroundColor: AppColor.white,
              body: SingleChildScrollView(
                padding: EdgeInsets.all(22.w),
                child: Form(
                  key: model.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.h,
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
                          text: 'Welcome',
                          color: AppColor.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: TextView(
                          text: 'Kindly enter your details to get started.',
                          color: AppColor.black,
                          textAlign: TextAlign.center,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      TextView(
                        text: 'First Name',
                        color: AppColor.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormWidget(
                        label: 'Enter your First Name',
                        controller: firstNameController,
                        keyboardType: TextInputType.text,
                        validator: AppValidator.validateName(),
                      ),
                      SizedBox(
                        height: 20.h,
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
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                  label: 'yyyy-mm-dd',
                                  suffixIcon: Icons.calendar_month,
                                  size: 14.sp,
                                  suffixIconColor: AppColor.primary,
                                  readOnly: true,
                                  controller: dateofBirthController,
                                  onTapped: () => pickDate(
                                      context: context,
                                      onChange: (String date) {

                            var firstSub = date.substring(0, 2);
                            var secondSub = date.substring(6);
                           finalValue =
                                "$secondSub${date.substring(2, 6)}$firstSub";
                                        dateofBirthController.text = date;
                                      }),
                                  validator: AppValidator.validateString(),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                      SizedBox(
                        height: 20.h,
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
                        height: 20.h,
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
                            TextSpan(
                              text: '(Optional)',
                              style: TextStyle(
                                  color: AppColor.bleugrey, fontSize: 14.sp),
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
                        height: 40.h,
                      ),
                      ButtonWidget(
                          width: 250,
                          text: 'Continue',
                          colorGrey: model.disabled
                              ? AppColor.primary.withOpacity(0.4)
                              : AppColor.primary,
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
                                          finalValue,
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
                        height: 25.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }
}

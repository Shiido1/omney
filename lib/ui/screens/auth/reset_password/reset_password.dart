import 'package:flutter/material.dart';
import 'package:omney/core/middle_ware/view_model.dart';
import 'package:omney/ui/screens/auth/forgot_password/verification_otp/verification_otp_entity/verification_otp_entity.dart';
import 'package:omney/ui/screens/auth/reset_password/reset_password.form.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../../../../core/core_folder/app/app.locator.dart';
import '../../../../main.dart';
import '../../../utils/color/app_color_utils.dart';
import '../../../utils/utils/AppValidator.dart';
import '../../../utils/widgets/button_widget.dart';
import '../../../utils/widgets/text_view.dart';

@FormView(fields: [FormTextField(name: 'otp')])
class ResetPassword extends StatelessWidget with $ResetPassword {
  ResetPassword({super.key, required this.otpString});

  final String otpString;

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
                          onPressed: () =>
                                navigate.back(),
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
                      text: 'Reset your password',
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    )),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextView(
                      text:
                          'Please enter the OTP sent to your email to reset your password.',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: TextView(
                        text: 'OTP',
                        fontSize: 18,
                        color: AppColor.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      child: PinCodeTextField(
                        controller: otpController,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        length: 6,
                        obscureText: false,
                        animationType: AnimationType.fade,
                        keyboardType: TextInputType.number,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(8),
                          fieldWidth: 50,
                          activeFillColor: Colors.white,
                          inactiveColor: Colors.grey,
                          inactiveFillColor: Colors.white,
                        ),
                        validator: AppValidator.validateOTP(),
                        animationDuration: const Duration(milliseconds: 300),
                        enableActiveFill: true,
                        onCompleted: (v) {},
                        onChanged: (value) {},
                        beforeTextPaste: (text) {
                          return true;
                        },
                        appContext: context,
                        autoDisposeControllers: false,

                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        TextView(
                          text: 'Didn’t get the OTP?',
                          fontSize: 13,
                          color: AppColor.primary,
                          fontWeight: FontWeight.w500,
                        ),
                        TextView(
                          text: 'Change My Email',
                          fontSize: 13,
                          color: AppColor.primary,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    ButtonWidget(
                      width: 250,
                      text: 'Continue',
                      color: AppColor.white,
                      onTap: () {
                        if (model.formKey.currentState!.validate()) {
                          model.verifyPasswordOTP(
                              VerificationOtpEntity(
                                  id: otpString, otp: otpController.text),
                              context);
                        }
                      },
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

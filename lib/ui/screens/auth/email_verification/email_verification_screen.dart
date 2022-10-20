import 'package:flutter/material.dart';
import 'package:omney/core/global_var.dart';
import 'package:omney/core/middle_ware/view_model.dart';
import 'package:omney/ui/screens/auth/email_verification/verification_entity/verification_entity.dart';
import 'package:omney/ui/utils/color/app_color_utils.dart';
import 'package:omney/ui/utils/utils/AppValidator.dart';
import 'package:omney/ui/utils/widgets/text_view.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import '../../../utils/widgets/button_widget.dart';
import 'email_verification_screen.form.dart';

@FormView(fields: [FormTextField(name: 'otp')])

// ignore: must_be_immutable
class EmailVerificationScreen extends StatelessWidget
    with $EmailVerificationScreen {
  EmailVerificationScreen({required this.otpString, super.key});

  String? currentTextView;
  final String otpString;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ViewModel(context: context),
        builder: (_, model, __) {
          return Scaffold(
            backgroundColor: AppColor.white,
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: model.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 85,
                    ),
                    // Container(
                    //   padding: const EdgeInsets.only(left: 8),
                    //   decoration: const BoxDecoration(
                    //       color: AppColor.blight,
                    //       borderRadius: BorderRadius.all(Radius.circular(10))),
                    //   child: IconButton(
                    //       onPressed: () {},
                    //       icon: const Icon(
                    //         Icons.arrow_back_ios,
                    //         color: AppColor.primary,
                    //       )),
                    // ),
                    Center(
                      child: SizedBox(
                        child: Image.asset(
                            "assets/gif/mobile-security-color-change.gif",
                            fit: BoxFit.contain,
                            width: 700,
                            height: 250),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Center(
                        child: Column(
                          children: [
                            TextView(
                              text: 'Hi, $name',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                            const SizedBox(height: 10),
                            const TextView(
                              text: 'Verify your Email',
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                            const SizedBox(height: 5),
                            Text.rich(
                              textAlign: TextAlign.center,
                              TextSpan(
                                children: [
                                  const TextSpan(
                                      text: 'Enter the 6 digit code sent to ',
                                      style: TextStyle(
                                        color: AppColor.black,
                                        fontSize: 18,
                                      )),
                                  TextSpan(
                                    text: email ?? '',
                                    style: const TextStyle(
                                        color: AppColor.primary, fontSize: 18),
                                  ),
                                  const TextSpan(
                                    text: ' to verify.',
                                    style: TextStyle(
                                        color: AppColor.black, fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
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
                        backgroundColor: AppColor.white,
                        keyboardType: TextInputType.number,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        length: 6,
                        obscureText: false,
                        animationType: AnimationType.fade,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(8),
                          fieldWidth: 50,
                          activeFillColor: Colors.white,
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
                      text: 'Verify',
                      color: AppColor.white,
                      onTap: () {
                        if (model.formKey.currentState!.validate()) {
                          model.verifyOTP(
                              VerificationEntity(
                                  id: otpString, otp: otpController.text),
                              context);
                        }
                      },
                      loading: model.isBusy,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

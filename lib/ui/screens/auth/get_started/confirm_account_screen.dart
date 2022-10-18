import 'package:flutter/material.dart';
import 'package:omney/ui/screens/auth/get_started/welcome_screen.dart';
import '../../../utils/color/app_color_utils.dart';
import '../../../utils/widgets/button_widget.dart';
import '../../../utils/widgets/text_form_widget.dart';
import '../../../utils/widgets/text_view.dart';

class ConfirmAccount extends StatefulWidget {
  const ConfirmAccount({super.key});

  @override
  State<ConfirmAccount> createState() => _ConfirmAccountState();
}

class _ConfirmAccountState extends State<ConfirmAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            const Align(
              alignment: Alignment.center,
              child: TextView(
                text: 'Let’s Get Started',
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
                text:
                    'Lets confirm you are the original owner of this account.',
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
              text: 'BVN',
              color: AppColor.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormWidget(
              label: 'Enter your BVN',
            ),
            const SizedBox(
              height: 20,
            ),
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
              label: 'dd-mm-yy',
              suffixIcon: Icons.calendar_month,
              suffixIconColor: AppColor.primary,
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
            ),
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
            ),
            const SizedBox(
              height: 40,
            ),
            ButtonWidget(
                width: 250,
                text: 'Continue',
                color: AppColor.white,
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WelcomeScreen()))),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                TextView(
                  text: 'Already have an account',
                  color: AppColor.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                TextView(
                  text: 'Login',
                  color: AppColor.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}

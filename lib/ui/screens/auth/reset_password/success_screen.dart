import 'package:flutter/material.dart';
import 'package:omney/core/core_folder/app/app.router.dart';
import 'package:omney/main.dart';
import '../../../utils/color/app_color_utils.dart';
import '../../../utils/widgets/button_widget.dart';
import '../../../utils/widgets/text_view.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(22),
        child: Center(
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
                  "assets/gif/success.gif",
                  height: 200.0,
                  width: 300.0,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const TextView(
                text: 'You have successfully changed your password.',
                fontSize: 15,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              ButtonWidget(
                width: 250,
                text: 'Proceed',
                color: AppColor.white,
                onTap: () => navigate.replaceWith(Routes.dashboardView),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

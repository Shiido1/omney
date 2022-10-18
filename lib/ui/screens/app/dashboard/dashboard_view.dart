import 'package:flutter/material.dart';
import 'package:omney/ui/utils/color/app_color_utils.dart';

import '../../../utils/widgets/text_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: TextView(
          text: "Welcome",
          fontSize: 23,
          fontWeight: FontWeight.w400,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(currentIndex: 0, items: [
        BottomNavigationBarItem(
          label: '',
          icon: Column(
            children: const [
              Icon(
                Icons.home,
                color: AppColor.black,
              ),
              SizedBox(
                height: 5,
              ),
              TextView(
                text: 'Home',
                color: AppColor.black,
              )
            ],
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Column(
            children: const [
              Icon(
                Icons.change_circle_outlined,
                color: AppColor.black,
              ),
              SizedBox(
                height: 5,
              ),
              TextView(
                text: 'Portfolio',
                color: AppColor.black,
              )
            ],
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Column(
            children: const [
              Icon(
                Icons.school_outlined,
                color: AppColor.black,
              ),
              SizedBox(
                height: 5,
              ),
              TextView(
                text: 'Learn',
                color: AppColor.black,
              )
            ],
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Column(
            children: const [
              Icon(
                Icons.person,
                color: AppColor.black,
              ),
              SizedBox(
                height: 5,
              ),
              TextView(
                text: 'Account',
                color: AppColor.black,
              )
            ],
          ),
        ),
      ]),
    );
  }
}

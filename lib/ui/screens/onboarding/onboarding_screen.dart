import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:omney/core/core_folder/app/app.router.dart';
import 'package:omney/main.dart';
import 'package:omney/ui/utils/color/app_color_utils.dart';
import 'package:omney/ui/utils/widgets/button_widget.dart';
import 'package:omney/ui/utils/widgets/text_view.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final int _numPages = 3;

  final PageController _pageController = PageController(initialPage: 0);

  int _currentPage = 0;
  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  // boolean to verify current widget page
  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      height: 7.0,
      width: isActive ? 32.0 : 8.0,
      decoration: BoxDecoration(
          color: isActive ? AppColor.primary : AppColor.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
          border: Border.all(color: AppColor.primary)),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 110,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.45,
                child: PageView(
                  physics: const ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: [
                    // First onboarding screen
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Center(
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height / 2,
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset("assets/gif/onboarding.gif",
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Center(
                          child: TextView(
                            text: 'Welcome to Omney',
                            textAlign: TextAlign.center,
                            fontSize: 32.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Center(
                          child: TextView(
                            text:
                                'Trading international and local stocks. Omney is your one stop investment app.',
                            textAlign: TextAlign.center,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                    // Second onboarding screen
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Center(
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height / 2,
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset(
                                "assets/gif/world.gif",
                                fit: BoxFit.contain,
                                width: 200.w,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Center(
                          child: TextView(
                            text: 'Global Market Trading',
                            textAlign: TextAlign.center,
                            fontSize: 32.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Center(
                          child: TextView(
                            text:
                                'Invest in thousands of stocks and ETFs, grow your knowledge with educational resources.',
                            textAlign: TextAlign.center,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                    // Third onboarding screen
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Center(
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height / 2,
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset(
                                'assets/gif/lock.gif',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Center(
                          child: TextView(
                            text: 'Account Security',
                            textAlign: TextAlign.center,
                            fontSize: 32.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Center(
                          child: TextView(
                            text:
                                'You’re protected with security measures like encryption and two-factor authentication.',
                            textAlign: TextAlign.center,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                    text: 'Sign Up',
                    color: AppColor.white,
                    colorGrey: AppColor.primary,
                    onTap: () => navigate.replaceWith(Routes.getStartedScreen),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 8.w,
                    ),
                  ),
                  ButtonWidget(
                    text: 'Login',
                    color: AppColor.primary,
                    isThick: false,
                    onTap: () => navigate.replaceWith(Routes.welcomeBackScreen),
                  ),
                ],
              ),
              SizedBox(
                height: 45.h,
              ),
              TextView(
                text: 'or',
                color: AppColor.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: AppColor.blight, shape: BoxShape.circle),
                    padding: EdgeInsets.all(3.r),
                    child: SvgPicture.asset(
                      'assets/svg/google.svg',
                      height: 20.h,
                      width: 20.w,
                    ),
                  ),
                  SizedBox(
                    width: 25.w,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: AppColor.blight, shape: BoxShape.circle),
                    padding: EdgeInsets.all(3.r),
                    child: SvgPicture.asset(
                      'assets/svg/facebook.svg',
                      height: 20.h,
                      width: 20.w,
                      color: AppColor.primary,
                    ),
                  ),
                  SizedBox(
                    width: 25.w,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: AppColor.blight, shape: BoxShape.circle),
                    padding: EdgeInsets.all(3.r),
                    child: SvgPicture.asset('assets/svg/apple.svg',
                        height: 20.h, width: 20.w),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

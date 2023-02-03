import 'package:flutter/material.dart';
import 'package:konethus_app/components/constants.dart';
import 'package:konethus_app/components/cupertino_button.dart';
import 'package:konethus_app/components/onboarding_image.dart';
import 'package:konethus_app/screens/login_screens/login_screen.dart';
import 'package:konethus_app/screens/signup_screens/signup_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int index = 0;
  List<String> onBoardingText = [
    'Konethus allows you to connect to several tech enthusiast, personnels and newbies from all over the world from different tech niche',
    'Get to connect and have a live meeting without logging out of the application. Both in voice calls and in video calls.',
    'Get to put your work out there while still having fun, great polls and even upload a file format of your codes. Cool, right?',
  ];
  List<String> onBoardingHeaderText = [
    'Connect with other Techies',
    'Unlimited Group calls',
    'Show your work'
  ];
  final controller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                right: 10,
                top: 40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  isLastPage
                      ? const SizedBox.shrink()
                      : TextButton(
                          onPressed: () {
                            controller.animateToPage(
                              2,
                              duration: const Duration(
                                seconds: 3,
                              ),
                              curve: Curves.bounceOut,
                            );
                          },
                          child: const Text(
                            "Skip",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: kprimaryColor,
                            ),
                          ),
                        ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: PageView(
                onPageChanged: (value) => setState(() {
                  isLastPage = value == 2;
                  index = value;
                }),
                controller: controller,
                children: [
                  onBoard(
                    'assets/images/connect_with_other_techies.riv',
                  ),
                  onBoard(
                    'assets/images/unlimited_group_calls.riv',
                  ),
                  onBoard(
                    "assets/images/show_your_work.riv",
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 30,
                    ),
                    child: SmoothPageIndicator(
                      onDotClicked: (index) => controller.animateToPage(
                        index,
                        duration: const Duration(
                          seconds: 2,
                        ),
                        curve: Curves.easeInOut,
                      ),
                      controller: controller,
                      count: 3,
                      effect: const ExpandingDotsEffect(
                        activeDotColor: kprimaryColor,
                        dotColor: Color.fromARGB(
                          187,
                          174,
                          174,
                          174,
                        ),
                        spacing: 15,
                        offset: 10,
                        dotHeight: 12,
                        dotWidth: 12,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        onBoardingHeaderText[index],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Text(
                          onBoardingText[index],
                          style: const TextStyle(
                            color: Color.fromARGB(
                              133,
                              0,
                              2,
                              9,
                            ),
                            fontStyle: FontStyle.normal,
                            fontSize: 15,
                          ),
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  cupertinoButton(
                    isLastPage
                        ? () async {
                            final prefs = await SharedPreferences.getInstance();
                            prefs.setBool(
                              'showHome',
                              true,
                            );
                            // ignore: use_build_context_synchronously
                            Navigator.pushNamed(
                              context,
                              SignUpScreen.id,
                            );
                          }
                        : () {
                            controller.nextPage(
                              duration: const Duration(
                                seconds: 2,
                              ),
                              curve: Curves.easeInOut,
                            );
                          },
                    isLastPage
                        ? const Text(
                            'Sign Up',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        : const Text(
                            'Next',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                    20,
                    60,
                  ),
                  isLastPage
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have an account?',
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  LoginScreen.id,
                                );
                              },
                              child: const Text(
                                "Log in",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        )
                      : const SizedBox.shrink()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

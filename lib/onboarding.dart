import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lec_project/home.dart';
import 'package:lec_project/register.dart';
import 'package:lec_project/login.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentPage = 0;
  final indicatorController = LiquidController();
  bool sideReveal = true;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    final pages = [
      Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
                width: w,
                height: h * 0.4,
                child: Center(
                  child: Lottie.network(
                      'https://assets8.lottiefiles.com/temp/lf20_KQd5BP.json'),
                )),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Explore the Solar system",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple.shade900),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: h * 0.02,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Gain knowledge about the solar system through our easy to read modules",
                          style: TextStyle(
                              fontSize: 14, color: Colors.deepPurple.shade900),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        color: Colors.purple.shade50,
        child: Column(
          children: [
            SizedBox(
                width: w,
                height: h * 0.4,
                child: Center(
                  child: Lottie.network(
                      'https://assets6.lottiefiles.com/packages/lf20_TWsENL5Nze.json'),
                )),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Take a look at a 360 degree view",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple.shade900),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: h * 0.02,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Get immersed on our gallery of interactive planets",
                          style: TextStyle(
                              fontSize: 14, color: Colors.deepPurple.shade900),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        color: Colors.deepPurple.shade100,
        child: Column(
          children: [
            SizedBox(
                width: w,
                height: h * 0.4,
                child: Center(
                  child: Lottie.network(
                      'https://assets6.lottiefiles.com/packages/lf20_xwgclkyh.json'),
                )),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Go and share your knowledge",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple.shade900),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: h * 0.02,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Knowledge grows exponentially when it is shared",
                          style: TextStyle(
                              fontSize: 14, color: Colors.deepPurple.shade900),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      SingleChildScrollView(
        child: Container(
          color: Colors.deepPurple.shade300,
          child: Column(
            children: [
              SizedBox(
                  width: w,
                  height: h * 0.4,
                  child: Center(
                    child: Lottie.network(
                        'https://assets4.lottiefiles.com/packages/lf20_4tg3fb79.json'),
                  )),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "XYZ Company",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "The next generation of children education",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        // SizedBox(
                        //   height: h * 0.1,
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: w,
                height: h,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(30))),
                child: Column(
                  children: [
                    SizedBox(
                      height: h * 0.1,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: h * 0.07,
                        width: w * 0.7,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return const LoginPage();
                              }));
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ),
                    // ),
                    SizedBox(
                      height: h * 0.04,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: h * 0.07,
                        width: w * 0.7,
                        child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return const RegisterPage();
                              }));
                            },
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                  color: Colors.deepPurple.shade600, width: 2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: Text(
                              "Sign Up",
                              style:
                                  TextStyle(color: Colors.deepPurple.shade900),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    ];

    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            LiquidSwipe(
              pages: pages,
              liquidController: indicatorController,
              onPageChangeCallback: onPageChangedCallback,
              slideIconWidget: currentPage == 3
                  ? const SizedBox()
                  : Icon(
                      Icons.navigate_next,
                      color: Colors.deepPurple.shade900,
                    ),
              enableLoop: false,
              enableSideReveal: true
              // true
              ,
            ),
            Positioned(
                bottom: 20,
                child: currentPage == 3
                    ? const SizedBox()
                    : TextButton(
                        onPressed: (() {
                          indicatorController.jumpToPage(
                              page: pages.length - 1);
                        }),
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              fontSize: 12, color: Colors.deepPurple.shade900),
                        ),
                      )),
            Positioned(
                bottom: 150,
                child: currentPage == 3
                    ? const SizedBox()
                    : AnimatedSmoothIndicator(
                        count: 4,
                        activeIndex: indicatorController.currentPage,
                        effect: WormEffect(
                            activeDotColor: Colors.deepPurple.shade900,
                            dotHeight: 5),
                      ))
          ],
        ),
      ),
    );
  }

  onPageChangedCallback(int activePageIndex) {
    setState(() {
      // print(activePageIndex);
      currentPage = activePageIndex;
    });
  }
}

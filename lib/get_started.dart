import 'package:flutter/material.dart';
import 'package:lec_project/onboarding.dart';
import 'package:lottie/lottie.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            width: w,
            height: h * 0.45,
            decoration: BoxDecoration(
                color: Colors.deepPurple.shade300,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(50),
                )),
            child: Lottie.network(
                'https://assets1.lottiefiles.com/packages/lf20_jm7mv1ib.json'),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade300,
            ),
            child: Container(
              width: w,
              height: h,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                  )),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Be Ready to Navigate Across the Sea of Space",
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
                            "We provide an experience you can never forget. Dive into our solar system through an interative learning",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepPurple.shade900),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: h * 0.1,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            //elevated button regis
                            height: h * 0.07,
                            width: w * 0.7,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (BuildContext context) {
                                    return const Onboarding();
                                  }));
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                child: const Text("Get Started")),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

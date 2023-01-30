import 'dart:ui';

import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lec_project/models/planet_info.dart';
import 'package:lec_project/views3d/earth_view.dart';
import 'package:lec_project/facts.dart';
import 'package:lec_project/get_started.dart';
import 'package:lec_project/login.dart';
import 'package:lec_project/views3d/jupiter_view.dart';
import 'package:lec_project/views3d/mars_view.dart';
import 'package:lec_project/views3d/mercury_view.dart';
import 'package:lec_project/register.dart';
import 'package:lec_project/views3d/neptune_view.dart';
import 'package:lec_project/views3d/saturn_view.dart';
import 'package:lec_project/views3d/sun_view.dart';
import 'package:lec_project/views3d/uranus_view.dart';
import 'package:lec_project/views3d/venus_view.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  int current = 0;

  // List<String> objects = [
  //   "assets/3d/saturn.glb",
  //   "assets/3d/sun.glb",
  //   "assets/3d/mercury.glb",
  //   "assets/3d/venus.glb",
  //   "assets/3d/earth.glb",
  //   "assets/3d/mars.glb",
  //   "assets/3d/jupiter.glb",
  //   "assets/3d/saturn.glb",
  //   "assets/3d/uranus.glb",
  //   "assets/3d/neptune.glb",
  // ];

  final testing = [
    const SunView(),
    const MercuryView(),
    const VenusView(),
    const EarthView(),
    const MarsView(),
    const JupiterView(),
    const SaturnView(),
    const UranusView(),
    const NeptuneView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.all(5),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "360 Degree View",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple.shade900),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: planets.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: (() {
                              setState(() {
                                current = index;
                              });
                            }),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.all(5),
                              width: 80,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: current == index
                                      ? Colors.white70
                                      : Colors.white54,
                                  borderRadius: current == index
                                      ? BorderRadius.circular(15)
                                      : BorderRadius.circular(10),
                                  border: current == index
                                      ? Border.all(
                                          color: Colors.deepPurple.shade900,
                                          width: 2)
                                      : null),
                              child: Center(
                                child: Text(
                                  planets[index].name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: current == index
                                          ? Colors.deepPurple.shade900
                                          : Colors.deepPurple.shade200),
                                ),
                              ),
                            ),
                          ),
                          Visibility(
                              visible: current == index,
                              child: Container(
                                width: 5,
                                height: 5,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.deepPurple.shade900),
                              ))
                        ],
                      );
                    }),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                width: 460,
                height: 460,
                child: testing[current],
                // child: BabylonJSViewer(src: objects[current]),
              )
            ],
          ),
        ),
      )),
    );
  }
}

import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SunView extends StatefulWidget {
  const SunView({super.key});

  @override
  State<SunView> createState() => _SunViewState();
}

class _SunViewState extends State<SunView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      body: Container(
        padding: const EdgeInsets.all(8),
        child: BabylonJSViewer(src: "assets/3d/sun.glb"),
      ),
    );
  }
}

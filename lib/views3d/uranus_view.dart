import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UranusView extends StatefulWidget {
  const UranusView({super.key});

  @override
  State<UranusView> createState() => _UranusViewState();
}

class _UranusViewState extends State<UranusView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      body: Container(
        padding: const EdgeInsets.all(8),
        child: BabylonJSViewer(src: "assets/3d/uranus.glb"),
      ),
    );
  }
}

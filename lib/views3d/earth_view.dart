import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EarthView extends StatefulWidget {
  const EarthView({super.key});

  @override
  State<EarthView> createState() => _EarthViewState();
}

class _EarthViewState extends State<EarthView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      body: Container(
        padding: const EdgeInsets.all(8),
        child: BabylonJSViewer(src: "assets/3d/earth.glb"),
      ),
    );
  }
}

import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SaturnView extends StatefulWidget {
  const SaturnView({super.key});

  @override
  State<SaturnView> createState() => _SaturnViewState();
}

class _SaturnViewState extends State<SaturnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      body: Container(
        padding: const EdgeInsets.all(8),
        child: BabylonJSViewer(src: "assets/3d/saturn.glb"),
      ),
    );
  }
}

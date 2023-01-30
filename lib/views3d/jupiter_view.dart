import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class JupiterView extends StatefulWidget {
  const JupiterView({super.key});

  @override
  State<JupiterView> createState() => _JupiterViewState();
}

class _JupiterViewState extends State<JupiterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      body: Container(
        padding: const EdgeInsets.all(8),
        child: BabylonJSViewer(src: "assets/3d/jupiter.glb"),
      ),
    );
  }
}

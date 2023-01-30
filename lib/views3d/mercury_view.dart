import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MercuryView extends StatefulWidget {
  const MercuryView({super.key});

  @override
  State<MercuryView> createState() => _MercuryViewState();
}

class _MercuryViewState extends State<MercuryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      body: Container(
        padding: const EdgeInsets.all(8),
        child: BabylonJSViewer(src: "assets/3d/mercury.glb"),
      ),
    );
  }
}

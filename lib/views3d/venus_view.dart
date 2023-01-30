import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class VenusView extends StatefulWidget {
  const VenusView({super.key});

  @override
  State<VenusView> createState() => _VenusViewState();
}

class _VenusViewState extends State<VenusView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      body: Container(
        padding: const EdgeInsets.all(8),
        child: BabylonJSViewer(src: "assets/3d/venus.glb"),
      ),
    );
  }
}

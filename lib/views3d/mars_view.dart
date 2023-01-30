import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MarsView extends StatefulWidget {
  const MarsView({super.key});

  @override
  State<MarsView> createState() => _MarsViewState();
}

class _MarsViewState extends State<MarsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      body: Container(
        padding: const EdgeInsets.all(8),
        child: BabylonJSViewer(src: "assets/3d/mars.glb"),
      ),
    );
  }
}

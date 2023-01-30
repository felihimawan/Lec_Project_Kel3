import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NeptuneView extends StatefulWidget {
  const NeptuneView({super.key});

  @override
  State<NeptuneView> createState() => _NeptuneViewState();
}

class _NeptuneViewState extends State<NeptuneView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      body: Container(
        padding: const EdgeInsets.all(8),
        child: BabylonJSViewer(src: "assets/3d/neptune.glb"),
      ),
    );
  }
}

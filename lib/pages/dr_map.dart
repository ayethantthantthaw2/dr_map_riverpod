import 'package:dr_map/widgets/dr_map_widget.dart';
import 'package:flutter/material.dart';

class DrMapScreen extends StatelessWidget {
  const DrMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC6ECFF),
      body: Stack(
        children: [
          DrMapWidget(),
        ],
      ),
    );
  }
}

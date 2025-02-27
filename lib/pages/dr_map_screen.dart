import 'package:dr_map/widgets/all_provinces_list_widget.dart';
import 'package:dr_map/widgets/dr_map_widget.dart';
import 'package:dr_map/widgets/map_assets_list_widget.dart';
import 'package:flutter/material.dart';

class DrMapScreen extends StatelessWidget {
  const DrMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC6ECFF),
      body: Stack(
        children: [
          Center(
            child: InteractiveViewer(
              clipBehavior: Clip.none,
              child: DrMapWidget(),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: MapAssetsListWidget(),
          ),
          Align(
            alignment: Alignment.topRight,
            child: AllProvincesListWidget(),
          )
        ],
      ),
    );
  }
}

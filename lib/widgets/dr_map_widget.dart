import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrMapWidget extends StatelessWidget {
  const DrMapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svg/map_assets/baserd.svg'),
        SvgPicture.asset('assets/svg/map_assets/islabeata.svg'),
        SvgPicture.asset('assets/svg/map_assets/islacatalina.svg'),
      ],
    );
  }
}

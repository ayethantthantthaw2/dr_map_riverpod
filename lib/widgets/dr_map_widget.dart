import 'package:dr_map/models/enums.dart';
import 'package:dr_map/providers/map_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrMapWidget extends ConsumerWidget {
  const DrMapWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedMapAssets = ref.watch(selectedMapAssetsProvider);
    final allProvinces = ref.watch(provincesListProvider);
    final selectedProvinces = ref.watch(selectedProvincesProvider);

    return Stack(children: [
      SvgPicture.asset('assets/svg/map_assets/baserd.svg'),
      SvgPicture.asset('assets/svg/provinces/islabeata.svg'),
      SvgPicture.asset('assets/svg/provinces/islacatalina.svg'),
      SvgPicture.asset('assets/svg/provinces/islasaona.svg'),
      ...List.generate(allProvinces.length, (index) {
        final province = allProvinces[index];
        var provinceColor = Colors.white;

        if (selectedProvinces.contains(province)) {
          provinceColor = Color.fromARGB(
              100, (index + 1) * 20, (index + 2) * 30, (index + 3) * 40);
        }

        return SvgPicture.asset(
          'assets/svg/provinces/${province.code}.svg',
          colorFilter: ColorFilter.mode(provinceColor, BlendMode.srcIn),
        );
      }),
      ...List.generate(selectedMapAssets.length, (index) {
        final asset = selectedMapAssets[index];
        final assetName = asset == MapAssets.seas || asset == MapAssets.names
            ? '${asset.name}_en'
            : asset.name;
        return SvgPicture.asset('assets/svg/map_assets/$assetName.svg');
      }),
    ]);
  }
}

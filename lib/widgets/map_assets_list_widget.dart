import 'package:dr_map/models/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/map_providers.dart';

class MapAssetsListWidget extends StatelessWidget {
  const MapAssetsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(16.0),
      width: 300,
      height: 420,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(
        spacing: 16.0,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Show",
              style: textTheme.headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold)),
          Expanded(
            child: Consumer(
              builder: (context, ref, child) {
                final selectedMapAssets = ref.watch(selectedMapAssetsProvider);

                return ListView.builder(
                  itemCount: MapAssets.values.length,
                  itemBuilder: (context, index) {
                    final mapAsset = MapAssets.values[index];
                    final assetValue = selectedMapAssets.contains(mapAsset);

                    return CheckboxListTile(
                      title: Text(mapAsset.name),
                      value: assetValue,
                      onChanged: (value) {
                        if (value!) {
                          selectedMapAssets.add(
                            (mapAsset),
                          );
                        } else {
                          selectedMapAssets.remove(
                            (mapAsset),
                          );
                        }
                        ref
                            .read(selectedMapAssetsProvider.notifier)
                            .update(selectedMapAssets);
                      },
                    );
                  },
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}

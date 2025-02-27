// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mockedProvincesHash() => r'6a9cc320e74760f39e5821c5e644ec43c4521528';

/// See also [mockedProvinces].
@ProviderFor(mockedProvinces)
final mockedProvincesProvider = AutoDisposeProvider<List<Province>>.internal(
  mockedProvinces,
  name: r'mockedProvincesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$mockedProvincesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef MockedProvincesRef = AutoDisposeProviderRef<List<Province>>;
String _$selectedMapAssetsHash() => r'38e1e8d4e989558f7ead01412120658583810bd2';

/// See also [SelectedMapAssets].
@ProviderFor(SelectedMapAssets)
final selectedMapAssetsProvider =
    AutoDisposeNotifierProvider<SelectedMapAssets, List<MapAssets>>.internal(
  SelectedMapAssets.new,
  name: r'selectedMapAssetsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedMapAssetsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedMapAssets = AutoDisposeNotifier<List<MapAssets>>;
String _$selectedProvincesHash() => r'fe8ab6b781a9ff832e4dba0684f33386eeb0cf70';

/// See also [SelectedProvinces].
@ProviderFor(SelectedProvinces)
final selectedProvincesProvider =
    AutoDisposeNotifierProvider<SelectedProvinces, List<Province>>.internal(
  SelectedProvinces.new,
  name: r'selectedProvincesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedProvincesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedProvinces = AutoDisposeNotifier<List<Province>>;
String _$provincesListHash() => r'44c6f813e51185db48446d96a79fe6e6ecec9789';

/// See also [ProvincesList].
@ProviderFor(ProvincesList)
final provincesListProvider =
    AutoDisposeNotifierProvider<ProvincesList, List<Province>>.internal(
  ProvincesList.new,
  name: r'provincesListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$provincesListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProvincesList = AutoDisposeNotifier<List<Province>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

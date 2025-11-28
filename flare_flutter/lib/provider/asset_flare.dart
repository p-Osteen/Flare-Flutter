import 'package:flare_flutter/asset_provider.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

@immutable
class AssetFlare extends AssetProvider {
  final AssetBundle bundle;
  final String name;

  const AssetFlare({required this.bundle, required this.name});

  @override
  int get hashCode => Object.hash(bundle, name);

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) return false;
    return other is AssetFlare && other.bundle == bundle && other.name == name;
  }

  @override
  Future<ByteData> load() => bundle.load(name);

  @override
  String toString() => '$runtimeType(bundle: $bundle, name: "$name")';
}

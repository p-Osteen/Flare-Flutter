// ignore_for_file: unnecessary_abstract_class, one_member_abstracts

import 'dart:typed_data';

abstract class AssetProvider {
  const AssetProvider();

  Future<ByteData> load();
}

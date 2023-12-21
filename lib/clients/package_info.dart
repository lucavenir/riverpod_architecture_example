import 'package:package_info_plus/package_info_plus.dart';


import 'package:riverpod_annotation/riverpod_annotation.dart';





part 'package_info.g.dart';
@riverpod
FutureOr<PackageInfo> packageInfo(PackageInfoRef ref) {



 return PackageInfo.fromPlatform();


}



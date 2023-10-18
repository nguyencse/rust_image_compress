import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'rust_image_compress_platform_interface.dart';

/// An implementation of [RustImageCompressPlatform] that uses method channels.
class MethodChannelRustImageCompress extends RustImageCompressPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('rust_image_compress');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

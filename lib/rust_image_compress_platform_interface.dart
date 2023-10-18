import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'rust_image_compress_method_channel.dart';

abstract class RustImageCompressPlatform extends PlatformInterface {
  /// Constructs a RustImageCompressPlatform.
  RustImageCompressPlatform() : super(token: _token);

  static final Object _token = Object();

  static RustImageCompressPlatform _instance = MethodChannelRustImageCompress();

  /// The default instance of [RustImageCompressPlatform] to use.
  ///
  /// Defaults to [MethodChannelRustImageCompress].
  static RustImageCompressPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [RustImageCompressPlatform] when
  /// they register themselves.
  static set instance(RustImageCompressPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

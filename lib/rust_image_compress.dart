
import 'rust_image_compress_platform_interface.dart';

class RustImageCompress {
  Future<String?> getPlatformVersion() {
    return RustImageCompressPlatform.instance.getPlatformVersion();
  }
}

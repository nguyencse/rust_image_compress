import 'package:flutter_test/flutter_test.dart';
import 'package:rust_image_compress/rust_image_compress.dart';
import 'package:rust_image_compress/rust_image_compress_platform_interface.dart';
import 'package:rust_image_compress/rust_image_compress_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockRustImageCompressPlatform
    with MockPlatformInterfaceMixin
    implements RustImageCompressPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final RustImageCompressPlatform initialPlatform = RustImageCompressPlatform.instance;

  test('$MethodChannelRustImageCompress is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelRustImageCompress>());
  });

  test('getPlatformVersion', () async {
    RustImageCompress rustImageCompressPlugin = RustImageCompress();
    MockRustImageCompressPlatform fakePlatform = MockRustImageCompressPlatform();
    RustImageCompressPlatform.instance = fakePlatform;

    expect(await rustImageCompressPlugin.getPlatformVersion(), '42');
  });
}

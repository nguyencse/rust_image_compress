import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rust_image_compress/rust_image_compress_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelRustImageCompress platform = MethodChannelRustImageCompress();
  const MethodChannel channel = MethodChannel('rust_image_compress');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}

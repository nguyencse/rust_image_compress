#ifndef FLUTTER_PLUGIN_RUST_IMAGE_COMPRESS_PLUGIN_H_
#define FLUTTER_PLUGIN_RUST_IMAGE_COMPRESS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace rust_image_compress {

class RustImageCompressPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  RustImageCompressPlugin();

  virtual ~RustImageCompressPlugin();

  // Disallow copy and assign.
  RustImageCompressPlugin(const RustImageCompressPlugin&) = delete;
  RustImageCompressPlugin& operator=(const RustImageCompressPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace rust_image_compress

#endif  // FLUTTER_PLUGIN_RUST_IMAGE_COMPRESS_PLUGIN_H_

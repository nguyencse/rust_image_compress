#include "include/rust_image_compress/rust_image_compress_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "rust_image_compress_plugin.h"

void RustImageCompressPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  rust_image_compress::RustImageCompressPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

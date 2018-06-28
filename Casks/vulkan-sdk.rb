cask 'vulkan-sdk' do
  version '1.1.77.0'
  sha256 '229d4c1cb0bf30c43fe91c9118dcf0d453af197b7289f1be646503c26fdd41f6'

  url "https://sdk.lunarg.com/sdk/download/#{version}/mac/vulkansdk-macos-#{version}.tar.gz"
  name 'LunarG Vulkan SDK'
  homepage 'https://vulkan.lunarg.com/sdk/home'

  binary "#{staged_path}/vulkansdk-macos-#{version}/macOS/bin/vulkaninfo"

  caveats "You must define a few environment variables for this SDK to work:\n"\
          "export VULKAN_SDK=#{staged_path}/vulkansdk-macos-#{version}/macOS\n"\
          "export VK_ICD_FILENAMES=#{staged_path}/vulkansdk-macos-#{version}/macOS/etc/vulkan/icd.d/MoltenVK_icd.json\n"\
          "export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:#{staged_path}/vulkansdk-macos-#{version}/macOS/lib\n"\
          "export VK_LAYER_PATH=#{staged_path}/vulkansdk-macos-#{version}/macOS/etc/vulkan/explicit_layer.d"
  caveats do
    license 'https://vulkan.lunarg.com/sdk/home#sdk-license'
    path_environment_variable "#{staged_path}/vulkansdk-macos-#{version}/macOS/bin"
  end
end

cask 'vulkan-sdk' do
  version '1.1.77.0'
  sha256 '229d4c1cb0bf30c43fe91c9118dcf0d453af197b7289f1be646503c26fdd41f6'

  url "https://sdk.lunarg.com/sdk/download/#{version}/mac/vulkansdk-macos-#{version}.tar.gz"
  name 'LunarG Vulkan SDK'
  homepage 'https://vulkan.lunarg.com/sdk/home'

  depends_on macos: '>= :el_capitan'

  binary "#{staged_path}/vulkansdk-macos-#{version}/macOS/bin/vulkaninfo"

  caveats do
    path_environment_variable "#{staged_path}/vulkansdk-macos-#{version}/macOS/bin"
    license 'https://vulkan.lunarg.com/sdk/home#sdk-license'
    <<~EOS
      You must define a few environment variables for this SDK to work:
        export VULKAN_SDK=#{staged_path}/vulkansdk-macos-#{version}/macOS
        export VK_ICD_FILENAMES=#{staged_path}/vulkansdk-macos-#{version}/macOS/etc/vulkan/icd.d/MoltenVK_icd.json
        export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:#{staged_path}/vulkansdk-macos-#{version}/macOS/lib
        export VK_LAYER_PATH=#{staged_path}/vulkansdk-macos-#{version}/macOS/etc/vulkan/explicit_layer.d
    EOS
  end
end

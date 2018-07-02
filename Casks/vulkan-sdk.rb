cask 'vulkan-sdk' do
  version '1.1.77.0'
  sha256 '229d4c1cb0bf30c43fe91c9118dcf0d453af197b7289f1be646503c26fdd41f6'

  url "https://sdk.lunarg.com/sdk/download/#{version}/mac/vulkansdk-macos-#{version}.tar.gz"
  name 'LunarG Vulkan SDK'
  homepage 'https://vulkan.lunarg.com/sdk/home'

  depends_on macos: '>= :el_capitan'

  binary "#{staged_path}/macOS/bin/vulkaninfo"

  # Move contents of redundant folder (that matches the name of the archive) up a folder
  # and then delete that folder.
  preflight do
    FileUtils.mv Dir.glob("#{staged_path}/vulkansdk-macos-#{version}/*"), staged_path.to_s
    FileUtils.remove_dir "#{staged_path}/vulkansdk-macos-#{version}"
  end

  caveats do
    license 'https://vulkan.lunarg.com/sdk/home#sdk-license'
    path_environment_variable "#{staged_path}/macOS/bin"
    <<~EOS
      You must define a few environment variables for this SDK to work:
        export VULKAN_SDK=#{staged_path}/macOS
        export VK_ICD_FILENAMES=#{staged_path}/macOS/etc/vulkan/icd.d/MoltenVK_icd.json
        export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:#{staged_path}/macOS/lib
        export VK_LAYER_PATH=#{staged_path}/macOS/etc/vulkan/explicit_layer.d
    EOS
  end
end

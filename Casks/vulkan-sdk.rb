cask 'vulkan-sdk' do
  version '1.1.82.0'
  sha256 'dbe04c1832397a78a6fd863d4b98d763b69ad9fad41d43c4f5fc72def63d7198'

  url "https://sdk.lunarg.com/sdk/download/#{version}/mac/vulkansdk-macos-#{version}.tar.gz"
  name 'LunarG Vulkan SDK'
  homepage 'https://vulkan.lunarg.com/sdk/home'

  depends_on macos: '>= :el_capitan'

  binary "#{staged_path}/macOS/bin/vulkaninfo"

  # Move contents from versioned directory to simplify `export` in shell.
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

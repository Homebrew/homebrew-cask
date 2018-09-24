cask 'vulkan-sdk' do
  version '1.1.82.1'
  sha256 '7fdabbcbbd2452bff7a292a66cd786f5b72b76fcdb713bb520c0c360a140a2c0'

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

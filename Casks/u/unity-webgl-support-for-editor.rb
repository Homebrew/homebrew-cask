cask "unity-webgl-support-for-editor" do
  version "6000.6.9f1,8c45277fb9c5"
  sha256 "2fb73e5fb27e734fa6a88c57e79ac9c8249e3754d49de0628edaf6fef16ddf73"

  url "https://download.unity3d.com/download_unity/#{version.csv.second}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.csv.first}.pkg"
  name "Unity WebGL Build Support"
  desc "WebGL target support for Unity"
  homepage "https://unity.com/products"

  livecheck do
    cask "unity"
  end

  depends_on cask: "unity"
  depends_on :macos

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.csv.first}.pkg"

  uninstall pkgutil: "com.unity3d.WebGLSupport-#{version.csv.first}"

  zap :not_required
end

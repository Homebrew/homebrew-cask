cask "unity-webgl-support-for-editor" do
  version "2020.1.11f1,698c1113cef0"
  sha256 "156a642acf4a6335e94270e7852e8aed4219bb3ec09f9d378a138774e84da9c2"

  # download.unity3d.com/download_unity/ was verified as official when first introduced to the cask
  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity WebGL Build Support"
  desc "WebGL taget support for Unity"
  homepage "https://unity.com/products"

  depends_on cask: "unity"

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.WebGLSupport"
end

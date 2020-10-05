cask "unity-webgl-support-for-editor" do
  version "2020.1.7f1,064ffcdb64ad"
  sha256 "fee19d2b7a31f809dc70d87ec605b52ba3484b8489c42c783d4c4202852da186"

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

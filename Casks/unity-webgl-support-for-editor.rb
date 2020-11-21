cask "unity-webgl-support-for-editor" do
  version "2020.1.14f1,d81f64f5201d"
  sha256 "abd2de2761f8e07e7fa4e11884459ff95bf379f1302d7993733c4b360fc86225"

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

cask "unity-lumin-support-for-editor" do
  version "2020.1.9f1,145f5172610f"
  sha256 "4f599f3345f8e211e15a060daf8185c28c9f93a9435bbe96c2d7c74e12ef4715"

  # download.unity3d.com/download_unity/ was verified as official when first introduced to the cask
  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity Lumin Build Support"
  desc "Lumin taget support for Unity"
  homepage "https://unity.com/products"

  depends_on cask: "unity"

  pkg "UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.LuminSupport"
end

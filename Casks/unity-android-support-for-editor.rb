cask "unity-android-support-for-editor" do
  version "2020.1.8f1,22e8c0b0c3ec"
  sha256 "5cf582b8112c0abb8c61fe40626a728c55bac99bdd3af808661b6cbe66a4ac93"

  # download.unity3d.com/download_unity/ was verified as official when first introduced to the cask
  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity Android Build Support"
  desc "Android taget support for Unity"
  homepage "https://unity.com/products"

  depends_on cask: "unity"

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.AndroidPlayer"
end

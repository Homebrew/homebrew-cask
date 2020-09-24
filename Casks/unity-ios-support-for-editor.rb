cask "unity-ios-support-for-editor" do
  version "2020.1.6f1,fc477ca6df10"
  sha256 "43199461fb5288160f791f8abb5ffefa20fc0c33ae723acae057db7f926cd927"

  # netstorage.unity3d.com/unity/ was verified as official when first introduced to the cask
  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity iOS Build Support"
  desc "iOS taget support for Unity"
  homepage "https://unity.com/products"

  depends_on cask: "unity"

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.iOSSupport"
end

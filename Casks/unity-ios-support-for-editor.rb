cask "unity-ios-support-for-editor" do
  version "2020.1.7f1,064ffcdb64ad"
  sha256 "797d42a26315be145dec2b197b8a1dcc7fc59459b7a019b8f3809e4bc9684e27"

  # download.unity3d.com/download_unity/ was verified as official when first introduced to the cask
  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity iOS Build Support"
  desc "iOS taget support for Unity"
  homepage "https://unity.com/products"

  depends_on cask: "unity"

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.iOSSupport"
end

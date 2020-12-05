cask "unity-ios-support-for-editor" do
  version "2020.1.15f1,97d0ae02d19d"
  sha256 "51e4ee036874c884679b40ba263d02d9bc13b9efba4b68aea3e597ca6fe5af92"

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
      verified: "download.unity3d.com/download_unity/"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity iOS Build Support"
  desc "iOS taget support for Unity"
  homepage "https://unity.com/products"

  depends_on cask: "unity"

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.iOSSupport"
end

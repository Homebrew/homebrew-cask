cask "unity-ios-support-for-editor" do
  version "6000.6.11f1,34837772f4f8"
  sha256 "1b2efb960bea49486c0d2d1c268fd8ffaf5fa431242a176fd0aee213e7d3aa81"

  url "https://download.unity3d.com/download_unity/#{version.csv.second}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.csv.first}.pkg"
  name "Unity iOS Build Support"
  desc "iOS target support for Unity"
  homepage "https://unity.com/products"

  livecheck do
    cask "unity"
  end

  depends_on cask: "unity"
  depends_on :macos

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.csv.first}.pkg"

  uninstall pkgutil: "com.unity3d.iOSSupport-#{version.csv.first}"

  zap :not_required
end

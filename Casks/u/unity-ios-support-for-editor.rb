cask "unity-ios-support-for-editor" do
  version "6000.6.9f1,8c45277fb9c5"
  sha256 "0d11e375afc049d7840f4da74e58a203ab2edcfc92b8d8b224b9c230d6c487d8"

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

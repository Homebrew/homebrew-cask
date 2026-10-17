cask "unity-ios-support-for-editor" do
  version "6000.6.6f1,d20c9ac777da"
  sha256 "5c0871f2bba6633e4f282f82f7937b29ec4b09a28851269c929cc95727fe1b33"

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
end

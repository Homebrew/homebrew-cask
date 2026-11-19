cask "unity-ios-support-for-editor" do
  version "6000.6.10f1,40e81493c67d"
  sha256 "feb707eb87c41911217a8b0a3d2ead1be9971a5c28d51d938a03648d677f942b"

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

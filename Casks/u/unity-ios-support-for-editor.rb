cask "unity-ios-support-for-editor" do
  version "6000.6.5f1,3ff58d469c8a"
  sha256 "b4a402583508fd006d449c75d0828505889612a67f632a951c4e4bd59fe3bc00"

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

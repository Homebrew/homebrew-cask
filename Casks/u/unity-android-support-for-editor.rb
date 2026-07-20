cask "unity-android-support-for-editor" do
  version "6000.5.3f1,c2eb47b3a2a9"
  sha256 "e8f2af6fc4dbfb1772e1306aa1d138642f7fde86befd87ced46d62ddbf3fad71"

  url "https://download.unity3d.com/download_unity/#{version.csv.second}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.csv.first}.pkg",
      verified: "download.unity3d.com/download_unity/"
  name "Unity Android Build Support"
  desc "Android target support for Unity"
  homepage "https://unity.com/products"

  livecheck do
    cask "unity"
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos
  depends_on cask: "unity"

  pkg "UnitySetup-Android-Support-for-Editor-#{version.csv.first}.pkg"

  uninstall pkgutil: "com.unity3d.AndroidPlayer-#{version.csv.first}"
end

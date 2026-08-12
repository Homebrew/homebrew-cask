cask "unity-android-support-for-editor" do
  version "6000.5.8f1,5cb7df797b7d"
  sha256 "bca1df39e62ea7c273baa313e3d9fae419cbc59ea858b55c62f09fbde4622177"

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

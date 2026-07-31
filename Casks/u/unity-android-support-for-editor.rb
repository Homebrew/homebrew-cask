cask "unity-android-support-for-editor" do
  version "6000.5.6f1,0e0577a1a2ac"
  sha256 "e2c129d3aa0d5a2063992580253599651ad409a43d92cd32ef5b578a0e4bb4c2"

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

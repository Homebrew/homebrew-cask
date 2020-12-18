cask "unity-appletv-support-for-editor" do
  version "2020.1.16f1,f483ad6465d6"
  sha256 "e5004e0dda371aa52959bc704d7762cb016d9c1b0f7f8e9f54fe897ec5440ac6"

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-AppleTV-Support-for-Editor-#{version.before_comma}.pkg",
      verified: "download.unity3d.com/download_unity/"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity AppleTV Build Support"
  desc "AppleTV target support for Unity"
  homepage "https://unity.com/products"

  depends_on cask: "unity"

  pkg "UnitySetup-AppleTV-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.AppleTVSupport"
end

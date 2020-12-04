cask "unity-appletv-support-for-editor" do
  version "2020.1.15f1,97d0ae02d19d"
  sha256 "0a07791d5e6b4c0d0d41567a218c801550d414b47c088dfb8a88d77d8fc16b9d"

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

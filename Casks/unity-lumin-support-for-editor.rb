cask "unity-lumin-support-for-editor" do
  version "2020.1.17f1,9957aee8edc2"
  sha256 "e326abccca5d42540b3c322acd1f0a5152d4c42fca9c0ad8abcc5b2b8e84953e"

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg",
      verified: "download.unity3d.com/download_unity/"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity Lumin Build Support"
  desc "Lumin target support for Unity"
  homepage "https://unity.com/products"

  depends_on cask: "unity"

  pkg "UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.LuminSupport"
end

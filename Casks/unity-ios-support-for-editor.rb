cask "unity-ios-support-for-editor" do
  version "2020.1.17f1,9957aee8edc2"
  sha256 "134b27ee7623d0cb3f35d06a27a002bae16409eeff817ca2a4028bc2fbdd62e9"

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg",
      verified: "download.unity3d.com/download_unity/"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity iOS Build Support"
  desc "iOS target support for Unity"
  homepage "https://unity.com/products"

  depends_on cask: "unity"

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.iOSSupport"
end

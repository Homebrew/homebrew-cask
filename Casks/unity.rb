cask "unity" do
  version "2020.1.16f1,f483ad6465d6"
  sha256 "5197decf81061b7936d557eae50d75a7a32010e198e207edb3c85adb3b1eda0e"

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorInstaller/Unity-#{version.before_comma}.pkg",
      verified: "download.unity3d.com/download_unity/"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity Editor"
  desc "Platform for 3D content"
  homepage "https://unity.com/products"

  pkg "Unity-#{version.before_comma}.pkg"

  uninstall quit:    "com.unity3d.UnityEditor5.x",
            pkgutil: "com.unity3d.UnityEditor5.x",
            delete:  "/Applications/Unity"
end

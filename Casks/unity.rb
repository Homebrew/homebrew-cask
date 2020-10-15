cask "unity" do
  version "2020.1.9f1,145f5172610f"
  sha256 "5dd076f370a0dc42d28c4daab2e8a6da5c4f6d2c596fe07124fdf11997561bff"

  # download.unity3d.com/download_unity/ was verified as official when first introduced to the cask
  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorInstaller/Unity-#{version.before_comma}.pkg"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity Editor"
  desc "Platform for 3D content"
  homepage "https://unity.com/products"

  pkg "Unity-#{version.before_comma}.pkg"

  uninstall quit:    "com.unity3d.UnityEditor5.x",
            pkgutil: "com.unity3d.UnityEditor5.x",
            delete:  "/Applications/Unity"
end

cask "unity" do
  version "2020.1.13f1,5e24f28bfbc0"
  sha256 "e53f9e256ce3d6b0444f0b04508173aad6ed112d46b56d4258380ed0226117f0"

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

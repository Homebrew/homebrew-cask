cask "unity" do
  version "2020.1.7f1,064ffcdb64ad"
  sha256 "556b15053801e12ea6a3311e68501c2100a1a7ccb55633c4fe6449acee54a410"

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

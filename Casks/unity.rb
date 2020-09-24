cask "unity" do
  version "2020.1.6f1,fc477ca6df10"
  sha256 "3e8e2e6a5cd75cce062f494dfe83b9c75884b17a9e23c3994143c124241644d2"

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

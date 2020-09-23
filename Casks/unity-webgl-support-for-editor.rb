cask "unity-webgl-support-for-editor" do
  version "2020.1.6f1,fc477ca6df10"
  sha256 "b91f1b15e2899aea0ea40e21560bd074ca61d544974d49494643f1fae9e77fef"

  # netstorage.unity3d.com/unity/ was verified as official when first introduced to the cask
  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity WebGL Build Support"
  homepage "https://unity.com/products"

  depends_on cask: "unity"

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: [
    "com.unity3d.WebGLSupport",
    "com.unity3d.UnityEditor5.x",
    ]
end

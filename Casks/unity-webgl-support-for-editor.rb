cask "unity-webgl-support-for-editor" do
  version "2020.1.1f1,2285c3239188"
  sha256 "fe30dbb737bbd7efe1420340b6685d431d5a0f8fba8d60abc74c65c5c5acfa2b"

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity WebGL Build Support"
  homepage "https://unity3d.com/unity/"

  depends_on cask: "unity"

  pkg "UnitySetup-WebGL-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.WebGLSupport"
end

cask "unity-lumin-support-for-editor" do
  version "2020.1.6f1,fc477ca6df10"
  sha256 "34754b7ab7bd3b66b2636d49bceb27d143988b1cadc36266236376d269541c33"

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity Lumin Build Support"
  homepage "https://unity3d.com/unity/whats-new/"

  depends_on cask: "unity"

  pkg "UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.LuminSupport"
end

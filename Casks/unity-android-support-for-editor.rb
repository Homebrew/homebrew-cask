cask "unity-android-support-for-editor" do
  version "2020.1.6f1,fc477ca6df10"
  sha256 "21fe02a3c57e94fc4cc479fede6d509e975e7b72e7fcee8295916e14d998c9c0"

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity Android Build Support"
  homepage "https://unity3d.com/unity/"

  depends_on cask: "unity"

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.AndroidPlayer"
end

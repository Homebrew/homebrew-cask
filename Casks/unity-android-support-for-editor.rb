cask "unity-android-support-for-editor" do
  version "2020.1.1f1,2285c3239188"
  sha256 "b5ba15492f91bad92058384e3d0619aaaa7b8fea9ae1c85fe6f117f7161393f7"

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity Android Build Support"
  homepage "https://unity3d.com/unity/"

  depends_on cask: "unity"

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.AndroidPlayer"
end

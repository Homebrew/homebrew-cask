cask "unity-ios-support-for-editor" do
  version "2020.1.1f1,2285c3239188"
  sha256 "a8dc178639977b1013af7bcc4890bfc30288d49a3607f791b9a9a6c4ff0ef167"

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity iOS Build Support"
  homepage "https://unity3d.com/unity/"

  depends_on cask: "unity"

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.iOSSupport"
end

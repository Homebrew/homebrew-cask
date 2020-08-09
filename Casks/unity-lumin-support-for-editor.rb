cask "unity-lumin-support-for-editor" do
  version "2020.1.1f1,2285c3239188"
  sha256 "9f4e37758df9a7cca70a07f39b58cb1f2a12fb1b678b1c7b6b904c243d6e5473"

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity Lumin Build Support"
  homepage "https://unity3d.com/unity/whats-new/"

  depends_on cask: "unity"

  pkg "UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.LuminSupport"
end

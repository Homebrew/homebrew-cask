cask "unity-lumin-support-for-editor" do
  version "2020.1.1f1,2285c3239188"
  sha256 "48fd245c865c410b1a06aba28efd96b0b1d082e0b73a07744dc6aa885c764d3a"

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity Lumin Build Support"
  homepage "https://unity3d.com/unity/whats-new/"

  depends_on cask: "unity"

  pkg "UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.LuminSupport"
end

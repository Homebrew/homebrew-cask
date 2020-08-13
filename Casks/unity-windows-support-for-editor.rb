cask "unity-windows-support-for-editor" do
  version "2020.1.1f1,2285c3239188"
  sha256 "ce6ce9dd7c2738d20307b80791ac9f478cb8e1d373447fdbe5e7a28899b0a83a"

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Windows-Mono-Support-for-Editor-#{version.before_comma}.pkg"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity Windows (Mono) Build Support"
  homepage "https://unity3d.com/unity/"

  depends_on cask: "unity"

  pkg "UnitySetup-Windows-Mono-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.WindowsStandaloneSupport"
end

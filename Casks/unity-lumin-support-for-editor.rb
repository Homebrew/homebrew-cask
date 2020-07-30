cask "unity-lumin-support-for-editor" do
  version "2019.4.6f1,a7aea80e3716"
  sha256 "e0c9ac92e981a11ccf242a826185d1a2288a571a5b61e399af5b655ea6072efd"

  url "https://download.unity3d.com/download_unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"
  appcast "https://public-cdn.cloud.unity3d.com/hub/prod/releases-darwin.json"
  name "Unity Lumin Build Support"
  homepage "https://unity3d.com/unity/whats-new/"

  depends_on cask: "unity"

  pkg "UnitySetup-Lumin-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: "com.unity3d.LuminSupport"
end

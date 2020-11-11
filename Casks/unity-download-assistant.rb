cask "unity-download-assistant" do
  version "2020.1.9f1,145f5172610f"
  sha256 "2b3dc80bf80b3f82c4b949b7db189096b681e0ccd883000f9e8940f56e5b9abf"

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast "https://unity3d.com/get-unity/download/archive"
  name "Unity"
  homepage "https://unity3d.com/unity/"

  installer manual: "Unity Download Assistant.app"

  uninstall pkgutil: "com.unity3d.*"
end

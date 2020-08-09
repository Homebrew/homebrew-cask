cask "unity-download-assistant" do
  version "2020.1.1f1,2285c3239188"
  sha256 "732a59b3c664eee3b05063aa13922898be3e51544d0510e19533c9afbb107c4d"

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast "https://unity3d.com/get-unity/download/archive"
  name "Unity"
  homepage "https://unity3d.com/unity/"

  installer manual: "Unity Download Assistant.app"

  uninstall pkgutil: "com.unity3d.*"
end

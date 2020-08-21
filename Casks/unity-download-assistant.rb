cask "unity-download-assistant" do
  version "2020.1.1f1,2285c3239188"
  sha256 "c40fe051a57f0d8d04a724b8374207434450d3e52ae7abc5c138668b6941a6f8"

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast "https://unity3d.com/get-unity/download/archive"
  name "Unity"
  homepage "https://unity3d.com/unity/"

  installer manual: "Unity Download Assistant.app"

  uninstall pkgutil: "com.unity3d.*"
end

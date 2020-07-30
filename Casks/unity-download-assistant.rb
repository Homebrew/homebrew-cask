cask "unity-download-assistant" do
  version "2019.4.6f1,a7aea80e3716"
  sha256 "cddbcf4ff11ba5b75c7983dbb2eaf7fb0d8e94d1900db930e0edbdd43b4a6169"

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast "https://unity3d.com/get-unity/download/archive"
  name "Unity"
  homepage "https://unity3d.com/unity/"

  installer manual: "Unity Download Assistant.app"

  uninstall pkgutil: "com.unity3d.*"
end

cask 'unity-download-assistant' do
  version '2019.2.9f1,ebce4d76e6e8'
  sha256 'dfdeb4dd35015da46fee467993b7ba2c25653eb68bc6bf503ef2288c278d4bc2'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

cask 'unity-download-assistant' do
  version '2019.2.12f1,b1a7e1fb4fa5'
  sha256 '6817fe145a500f256ba027bdc58e993cb5e081d119b849e8ce81740112146981'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

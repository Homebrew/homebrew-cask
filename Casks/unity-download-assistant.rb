cask 'unity-download-assistant' do
  version '2019.3.8f1,4ba98e9386ed'
  sha256 '8bd2a21d9ff4463417a8087884bcd3306f5a52a3d000d390d682a9eb1b13b323'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

cask 'unity-download-assistant' do
  version '2019.2.19f1,929ab4d01772'
  sha256 '0a4fa82e52e0f9e4ab365c1bc30ce8fb29abae05f9e39edff013aa6445d72115'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

cask 'unity-download-assistant' do
  version '2018.1.2f1,a46d718d282d'
  sha256 'd6c5c2ed427798be81d5086f68d4463afa5fc6bf84c6a283a63bbc41e9409590'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

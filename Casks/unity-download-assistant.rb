cask 'unity-download-assistant' do
  version '2018.3.11f1,5063218e4ab8'
  sha256 'eb68b86e7703a8c72d65f9c5027ddf6c3ee39e4263e959f73a3886e1fae918c6'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

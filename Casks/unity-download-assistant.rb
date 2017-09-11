cask 'unity-download-assistant' do
  version '2017.1.1f1,5d30cf096e79'
  sha256 '8e65fb669e0e72ad42ec958330a18126209c79b2cd6f79b99e94af1b3fedca13'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

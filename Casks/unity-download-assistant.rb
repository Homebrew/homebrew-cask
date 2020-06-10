cask 'unity-download-assistant' do
  version '2019.4.0f1,0af376155913'
  sha256 'c2b0f79e87472cc38191c17da1c817578fa1557270dfa22783d17d35d8f8535d'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

cask 'unity-download-assistant' do
  version '2019.4.3f1,f880dceab6fe'
  sha256 'e63ca20c70e369c72e916ccaa9658cc6b38f7cecef94d901c76555299f50bb0b'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

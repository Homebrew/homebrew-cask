cask 'unity-download-assistant' do
  version '2018.1.3f1,a53ad04f7c7f'
  sha256 '93b03f493d8c388808f76e4b40c928520329c55c3177ed1e8fcbb77cd0ee0a67'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

cask 'unity-download-assistant' do
  version '2019.2.11f1,5f859a4cfee5'
  sha256 '6e50db716a5128369083afd4464cddf37d4423bcf0cb0e244d95062ef517e08d'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

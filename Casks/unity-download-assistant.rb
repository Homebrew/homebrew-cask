cask 'unity-download-assistant' do
  version '2018.2.0f2,787658998520'
  sha256 '75baf4f0ff48b4d5ab2d021f654388a444abcfe420685fec49980cf5ff192c15'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

cask 'unity-download-assistant' do
  version '2019.2.2f1,ab112815d860'
  sha256 '76638ebb9a20274ada3cf19e2907671f2863144374a1bbcb26a017e274a87796'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

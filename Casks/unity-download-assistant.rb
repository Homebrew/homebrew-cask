cask 'unity-download-assistant' do
  version '2018.3.1f1,bb579dc42f1d'
  sha256 '68499e0fde64cfd0a9434ff23ae2d1e2fe04be9f98071f1edd5bc1745d427c56'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

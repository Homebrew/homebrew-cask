cask 'unity-download-assistant' do
  version '2018.3.9f1,947e1ea5aa8d'
  sha256 'a2b1459d941204d4d75e9887215c2020344f7c1f9a12dd349b2a164957e58ea3'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

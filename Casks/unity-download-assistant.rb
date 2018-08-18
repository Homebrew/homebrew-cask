cask 'unity-download-assistant' do
  version '2018.2.4f1,cb262d9ddeaf'
  sha256 '97bf070da403b26fd904168f7a92c6b4e9f7227f11a0c10edc8522d4125fd805'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

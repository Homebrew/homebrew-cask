cask 'unity-download-assistant' do
  version '2018.2.13f1,83fbdcd35118'
  sha256 'e42fff2a6017dd5ec639b6da58972d970499dc24894ab971fa2bfc1f6c0c7c6d'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

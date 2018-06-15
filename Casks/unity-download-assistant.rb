cask 'unity-download-assistant' do
  version '2018.1.4f1,1a308f4ebef1'
  sha256 'af1b4cd37db3fd00400992e6b9cfc3112bab0cb17b33df4909faf07e104f2ed3'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/update'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

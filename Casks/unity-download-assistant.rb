cask 'unity-download-assistant' do
  version '5.5.2f1,3829d7f588f3'
  sha256 'af96d69829a2f3bdc673e82081d79651723161cc88278b2c79faff46d7385a53'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

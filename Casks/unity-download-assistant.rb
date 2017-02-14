cask 'unity-download-assistant' do
  version '5.5.1f1,88d00a7498cd'
  sha256 'b2e02f6ef46abb287f1a67a6c74d8c0c6df93ecd7a47ef8bd09998bd09dd5f7e'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

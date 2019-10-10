cask 'unity-download-assistant' do
  version '2019.2.8f1,ff5b465c8d13'
  sha256 'aeaefa169399a683f531c6eb35dfc601a6a287902e681864b12f46cd1c8d22db'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/whats-new/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

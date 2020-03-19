cask 'unity-download-assistant' do
  version '2019.3.5f1,d691e07d38ef'
  sha256 'f6784145abf05ad68f8f07de748f36c4a5dcd71acc0d2a734054bc8eeab6f2e7'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

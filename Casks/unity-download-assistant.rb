cask 'unity-download-assistant' do
  version '2019.3.3f1,7ceaae5f7503'
  sha256 '8f602837848c3e3c00d503f57fb6ad1e5016d1fe4f5973c43aef6ef72442f6dc'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

cask 'unity-download-assistant' do
  version '2019.2.6f1,fe82a0e88406'
  sha256 '962a4f2c71c2713e4a9cf33741abe55f92a71b4ee88d57da8deff19c91bb8123'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

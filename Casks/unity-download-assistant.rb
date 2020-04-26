cask 'unity-download-assistant' do
  version '2019.3.11f1,ceef2d848e70'
  sha256 '609ab83b9b6a7d24c8ad3ad9400c6f34c65ca023a0aa5e8a034c17c3d21cd42c'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

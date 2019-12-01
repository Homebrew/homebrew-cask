cask 'unity-download-assistant' do
  version '2019.2.14f1,49dd4e9fa428'
  sha256 '0e0225bd6651d264817fd3e9a8c73f55361dc1885c1d9ebd3d217f7504ab5094'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

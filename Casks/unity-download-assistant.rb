cask 'unity-download-assistant' do
  version '5.3.1f1'
  sha256 '6c2a31e6241d2b511a53b9cb88713a38ded25b7f29de540eaf281f44441287f5'

  url "http://netstorage.unity3d.com/unity/cc9cbbcc37b4/UnityDownloadAssistant-#{version}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'
  license :commercial

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

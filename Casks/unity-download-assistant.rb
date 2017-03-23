cask 'unity-download-assistant' do
  version '5.5.2f1,3829d7f588f3'
  sha256 '3b9c4cf078cbe930882c5a428e81548d8d008316d4ae157e529b3f146e57d82b'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

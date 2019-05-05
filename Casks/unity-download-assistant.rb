cask 'unity-download-assistant' do
  version '2019.1.1f1,fef62e97e63b'
  sha256 '1e9c21261c88569e00d1296bc7eb7dee555c335f1b22da453e51dc040bdcc2f6'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

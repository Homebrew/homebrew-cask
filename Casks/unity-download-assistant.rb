cask 'unity-download-assistant' do
  version '2019.2.5f1,9dace1eed4cc'
  sha256 '6184c204d8c328f0e5bb371ab5fca54c8d52984bb525833348489328ea02dd9a'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

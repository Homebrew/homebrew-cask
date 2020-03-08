cask 'unity-download-assistant' do
  version '2019.3.4f1,4f139db2fdbd'
  sha256 '5149aecdcf500193d61d6a7a339fb5674aff5c9b326c75a717f2fc7eaab2becd'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

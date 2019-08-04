cask 'unity-download-assistant' do
  version '2019.2.0f1,20c1667945cf'
  sha256 '5ced7eeb3adf22477d8f83ec454c275e13071c2c15e98986b4f380921effaac9'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

cask 'unity-download-assistant' do
  version '2019.3.9f1,e6e740a1c473'
  sha256 'c12ad7bcfc323d86bc933bb2bb7e03e99d560e18028ad54c24c3ae95cd8d8880'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

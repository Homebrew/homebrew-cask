cask 'unity-download-assistant' do
  version '2018.1.6f1,57cc34175ccf'
  sha256 'f7600ac904869bc41bcaf8a797aaf8af19985a74c193ac100934eaf1a64ea66d'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

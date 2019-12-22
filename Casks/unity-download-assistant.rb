cask 'unity-download-assistant' do
  version '2019.2.17f1,8e603399ca02'
  sha256 '0f54e5d7a86d41436bbc714138d469091bb98cea458fd18f70165466e423994e'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

cask 'unity-download-assistant' do
  version '2018.2.3f1,1431a7d2ced7'
  sha256 '3d0af68ad7fe379481273f3b4a22e5e7fa415993f342e003562d82411b9a6d94'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

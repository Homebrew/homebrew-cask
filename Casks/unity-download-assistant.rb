cask 'unity-download-assistant' do
  version '2019.1.10f1,f007ed779b7a'
  sha256 'f6019477e12d6974c4f07e76b7a72497ffd36cfd9f2711a0a1f507d5b7629971'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

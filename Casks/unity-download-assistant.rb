cask 'unity-download-assistant' do
  version '2019.3.13f1,d4ddf0d95db9'
  sha256 'cb24357b4a4581dfa84ddadcd05715ae3c36b8fe1f05d370eb2f65ba4c9700f3'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end

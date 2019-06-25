cask 'unity-download-assistant' do
  version '2019.1.8f1,7938dd008a75'
  sha256 'a8a211a3867632d7eb3714ea768f4edb55ee21d74a240a88cb39f3b10b94a8d4'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/UnityDownloadAssistant-#{version.before_comma}.dmg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity'
  homepage 'https://unity3d.com/unity/'

  installer manual: 'Unity Download Assistant.app'

  uninstall pkgutil: 'com.unity3d.*'
end
